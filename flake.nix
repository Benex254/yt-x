{
  description = "Browse YouTube from your terminal with yt-x";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      packages.${system} = {
        default = pkgs.stdenv.mkDerivation {
          name = "yt-x";
          src = ./.;
          buildInputs = [ pkgs.yt-dlp pkgs.jq pkgs.fzf pkgs.mpv pkgs.ffmpeg pkgs.gum ];
          installPhase = ''
            mkdir -p $out/bin
            cp yt-x $out/bin/
            chmod +x $out/bin/yt-x
          '';
        };
      };

      devShells.${system} = pkgs.mkShell {
        buildInputs = [ pkgs.yt-dlp pkgs.jq pkgs.fzf pkgs.mpv pkgs.ffmpeg pkgs.gum ];
      };
    };
}
