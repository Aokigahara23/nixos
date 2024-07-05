{ pkgs, USER, ... }:

{
  # something hard should go here
  imports = [
    ./hyprpaper.nix
    ./starship.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./firefox.nix
    ./waybar.nix
    ./vscode.nix
    ./kitty.nix
    ./fish.nix
    ./rofi.nix
    #./pkgs/tmux.nix
  ];

  home.packages = with pkgs; [
    telegram-desktop
    bitwarden-cli
    lazygit
    bottom
    yazi

    llvmPackages_18.clang-tools
    llvmPackages_18.clang
    lldb_18
  ];

  programs = {

    yazi.enable = true;
    atuin.enable = true;
    bottom.enable = true;
    lazygit.enable = true;

    git = {
      enable = true;
      userName = USER.USERNAME;
      userEmail = USER.EMAIL;
    };
  };
}
