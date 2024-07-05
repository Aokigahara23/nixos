{
  description = "Forest23 NixOS flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    nixvim,
    ...
  }:

  let
    SYSTEM = {
      ARCH = "x86_64-linux";
      HOSTNAME = "legionNixOS";
      TZ = "Europe/Prague";
      LOCALE = "en_US.UTF-8";
      GRAPHICAL_BACKEND = "wayland";
    };

    USER = {
      USERNAME = "forest23";
      FULLNAME = "Alexey Lebedev";
      EMAIL = "aokigahara23@gmail.com";
      MONO_FONT = "JetBrainsMono Nerd Font";
      SYSTEM_FONT = "Overpass Nerd Font";
      WALLPAPER = "~/Pics/wp.jpg";
      AVATAR = "~/Pics/face.jpg";
      TERMINAL = "kitty";
      EDITOR = "nvim";
      WM = "hyperland";
    };

    COLORS = {
      BG = {
        BG_DIM = "1E2326";
        BG0 = "272E33";
        BG1 = "2E383C";
        BG2 = "374145";
        BG3 = "414B50";
        BG4 = "495156";
        BG5 = "4F5B58";
        VISUAL = "4C3743";
        RED = "493B40";
        GREEN = "3C4841";
        BLUE = "384B55";
        YELLOW = "45443C";
      };

      FG = {
        DEFAULT = "D3C6AA";
        RED = "E67E80";
        ORANGE = "E69875";
        YELLOW = "DBBC7F";
        GREEN = "A7C080";
        AQUA = "83C092";
        BLUE = "7FBBB3";
        PURPLE = "D699B6";
        GREY0 = "7A8478";
        GREY1 = "859289";
        GREY2 = "9DA9A0";
        STATUS_LINE1 = "A7C080";
        STATUS_LINE2 = "D3C6AA";
        STATUS_LINE3 = "E67E80";
      };
    };

  in {
    nixosConfigurations = {
      ${SYSTEM.HOSTNAME} = nixpkgs.lib.nixosSystem {

        modules = [
          ./nixos/configuration.nix
          nixvim.nixosModules.nixvim
        ];

        specialArgs = {
          inherit SYSTEM;
          inherit COLORS;
          inherit USER;
        };
      };
    };

    homeConfigurations = {
      ${USER.USERNAME} = home-manager.lib.homeManagerConfiguration  {

        pkgs = nixpkgs.legacyPackages.${SYSTEM.ARCH};
        modules = [
          ./home-manager/home.nix
        ];

        extraSpecialArgs = {
          inherit SYSTEM;
          inherit COLORS;
          inherit USER;
        };
      };
    };
  };
}
