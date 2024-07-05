{ pkgs, ... }:

{
  environment.systemPackages = with pkgs;
    [
      wayland

      brightnessctl
      wl-clipboard
      hyprpicker
      hyprpaper
      hyprlock
      hypridle
      waybar
      dunst
      wtype
      slurp
      grim

      rofi-wayland
      rofi-bluetooth
      rofi-emoji

      libnotify
      pavucontrol
    ];

  programs = {
    hyprland = {
      enable = true;
      portalPackage = pkgs.xdg-desktop-portal-hyprland;
    };
  };
}
