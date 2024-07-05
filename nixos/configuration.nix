{ pkgs, SYSTEM, USER, ... }:

{
  imports =
    [
      ./hardware/main.nix
      ./programs/main.nix
      ./services/main.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # use Zen kernel
  # boot.kernelPackages = pkgs.linuxKernel.packages.linux_zen;

  xdg = {
    portal = {
      enable = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-hyprland
        pkgs.xdg-desktop-portal-gtk
      ];
    };
  };

  security = {
    pam.services.login.enableGnomeKeyring = true;
    rtkit.enable = true;
  };

  users.users.${USER.USERNAME} = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "input"
      "audio"
    ];
    shell = pkgs.fish;
  };

  networking.hostName = SYSTEM.HOSTNAME;
  networking.networkmanager.enable = true;

  time.timeZone = SYSTEM.TZ;

  i18n.defaultLocale = SYSTEM.LOCALE;

  nixpkgs.config.allowUnfree = true;

  fonts = {
    packages = with pkgs;
    [
      (nerdfonts.override { fonts = [ "JetBrainsMono" "Overpass" ]; })
    ];
    fontconfig = {
      defaultFonts = {
        serif = [ "Overpass Nerd Font" ];
        sansSerif = [ "Overpass Nerd Font" ];
        monospace = [ "JetBrainsMono Nerd Font" ];
      };
    };
  };

  # NixOS specific
  system.stateVersion = "24.05"; # Did you read the comment?
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}

