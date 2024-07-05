{
  description = "Forest23 NixOS flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
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
      CATPPUCCIN_FLAVOR = "mocha";
      CATPPUCCIN_ACCENT = "mauve";
      MONO_FONT = "JetBrainsMono Nerd Font";
      SYSTEM_FONT = "Overpass Nerd Font";
      WALLPAPER = "~/Pics/wp.jpg";
      AVATAR = "~/Pics/face.jpg";

      TERMINAL = "kitty";
      EDITOR = "nvim";
      WM = "hyperland";
    };

  in {
    nixosConfigurations = {
      ${SYSTEM.HOSTNAME} = nixpkgs.lib.nixosSystem {

        modules = [
          ./nixos/configuration.nix
        ];

        specialArgs = {
          inherit SYSTEM;
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
          inherit USER;
        };
      };
    };
  };
}
