# YT-X

![GitHub Issues or Pull Requests](https://img.shields.io/github/issues/Benex254/FastAnime)
![GitHub License](https://img.shields.io/github/license/Benex254/yt-x)
![GitHub file size in bytes](https://img.shields.io/github/size/Benex254/yt-x/yt-x)
![GitHub Release](https://img.shields.io/github/v/release/Benex254/yt-x)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Benex254/yt-x)


Browse YouTube from your terminal.

[yt-x-search.webm](https://github.com/user-attachments/assets/e61bc8f1-e29d-4c13-a293-44e9ca706a0d)


<details>
<summary>Browse Channels You Have Subscribed To From The Terminal</summary>
  
  [yt-x-channels.webm](https://github.com/user-attachments/assets/a90e68c6-0b06-45f1-8458-7733057af648)

</details>
<details>
  <summary>View Channels Playlists</summary>

  [yt-x-channels-playlists.webm](https://github.com/user-attachments/assets/96868b70-7add-4172-b646-26f17f8e5afe)

</details>

<details>
  <summary>Search For Something From a Specific Channel</summary>
  
  [yt-x-channels-search.webm](https://github.com/user-attachments/assets/464420b3-2aca-4fd9-b369-01a8de5b487b)

</details>

<details>
<summary>Watch Whats Featured in A Specific Channel</summary>

  [yt-x-channels-featured.webm](https://github.com/user-attachments/assets/6c9e817a-8df3-4859-be04-395bc73aecad)

</details>

<details>
  <summary>I Use Neovim By The Way</summary>

  [yt-x-config.webm](https://github.com/user-attachments/assets/2d5b25d4-66ea-46c7-94da-5ecff22f9cde)

</details>

# Installation
![Linux/BSD](https://img.shields.io/badge/-Linux/BSD-red.svg?style=for-the-badge&logo=linux)
![Arch Linux](https://img.shields.io/badge/-Arch_Linux-black.svg?style=for-the-badge&logo=archlinux)
![MacOS](https://img.shields.io/badge/-MacOS-lightblue.svg?style=for-the-badge&logo=apple)
![Android](https://img.shields.io/badge/-Android-green.svg?style=for-the-badge&logo=android)

```bash
curl -sL https://raw.githubusercontent.com/Benex254/yt-x/refs/heads/master/yt-x -o ~/.local/bin/yt-x && chmod +x ~/.local/bin/yt-x
```

# Dependencies

**Required:**

- jq - to pass the  json data
- curl - to download preview images
- yt-dlp - to provide the data
- fzf - for the main ui
- mpv - for streaming
- ffmpeg - to properly download hsl streams
  
**optional:**

- glow - rendering the markdown for the descriptions
- gum - for an even better ui

# Usage

```bash
# launch the ui
yt-x

# edit your config
yt-x -e
```
