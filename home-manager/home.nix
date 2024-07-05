{ pkgs, USER, ... }:

{
  imports = [
    ./programs/main.nix
    ./services/main.nix
  ];

  home.username = USER.USERNAME;
  home.homeDirectory = "/home/" + USER.USERNAME;
  home.sessionVariables = {
    EDITOR = USER.EDITOR;
  };

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.nordzy-cursor-theme;
    name = "Nordzy-cursors";
    size = 20;
  };

  gtk = {
    enable = true;

    theme = {
      package = pkgs.everforest-gtk-theme;
      name = "Everforest-Dark-BL";
    };

    iconTheme = {
      package = pkgs.numix-icon-theme-circle;
      name = "Numix-Circle";
    };

    font = {
      name = "Overpass Nerd Font";
      size = 12;
    };
  };

  nixpkgs.config.allowUnfree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.stateVersion = "24.05";
}
