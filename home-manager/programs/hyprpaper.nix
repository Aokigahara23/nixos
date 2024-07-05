{ USER, ... }:

{
  services = {
    hyprpaper = {
      enable = true;
      settings = {
        ipc = "on";
        splash = false;
        preload = [
          USER.WALLPAPER
        ];
        wallpaper = [
          ",${USER.WALLPAPER}"
        ];
      };
    };
  };
}
