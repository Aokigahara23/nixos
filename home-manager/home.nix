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
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 16;
  };

  gtk = {
    enable = true;

    theme = {
      package = pkgs.kanagawa-gtk-theme;
      name = "Kanagawa-BL";
    };

    iconTheme = {
      package = pkgs.numix-icon-theme-circle;
      name = "Numix-Circle";
    };

    font = {
      name = "Sans";
      size = 11;
    };
  };

  nixpkgs.config.allowUnfree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.stateVersion = "24.05";
}
