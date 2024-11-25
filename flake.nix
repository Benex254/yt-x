{
  description = "Browse YouTube from your terminal with yt-x";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      inherit (nixpkgs) lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      deps = with pkgs; [
        yt-dlp
        jq
        fzf
        mpv
        ffmpeg
        gum
      ];
    in
    {
      packages.${system}.default = pkgs.stdenvNoCC.mkDerivation {
        pname = "yt-x";
        version = "git";
        src = ./.;

        nativeBuildInputs = [ pkgs.makeWrapper ];

        installPhase = ''
          install -Dm755 yt-x -t $out/bin
          wrapProgram $out/bin/yt-x \
            --prefix PATH : ${lib.makeBinPath deps}
        '';

        meta.mainProgram = "yt-x";
      };

      devShells.${system}.default = pkgs.mkShellNoCC {
        packages = deps;
      };
    };
}
