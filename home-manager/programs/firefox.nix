{ ... }:

{
  programs.firefox = {
    enable = true;

    profiles.forest23 = {
      id = 0;
      name = "default";
      isDefault = true;

      settings = {};

      bookmarks = [
        {
          name = "Socials";
          bookmarks = [
            {
              name = "YouTube";
              url = "https://youtube.com";
            }
            {
              name = "YouTube Music";
              url = "https://music.youtube.com";
            }
            {
              name = "Reddit";
              url = "https://reddit.com";
            }
          ];
        }
        {
          name = "Nix sites";
          bookmarks = [
            {
              name = "NixOS homepage";
              url = "https://nixos.org/";
            }
            {
              name = "NixOS Wiki";
              url = "https://wiki.nixos.org/";
            }
            {
              name = "MyNixOS";
              url = "https://mynixos.com";
            }
            {
              name = "NixPkgs";
              url = "https://search.nixos.org";
            }
          ];
        }
        {
          name = "Hyprland info";
          bookmarks = [
            {
              name = "Hyrpland Wiki";
              url = "https://wiki.hyprland.org/";
            }
            {
              name = "Waybar Wiki";
              url = "https://github.com/Alexays/Waybar/wiki";
            }
            {
              name = "Dunst Wiki";
              url = "https://github.com/dunst-project/dunst/wiki";
            }
          ];
        }
      ];
    };
  };
}
