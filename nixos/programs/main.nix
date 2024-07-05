{ pkgs, ... }:

{
  imports = [
    ./hyprland.nix
    ./firefox.nix
  ];

  environment.systemPackages = with pkgs;
   [
     vim 
     git
     wget
     curl
     lsof
     lshw
     neovim
     vscode
     killall
     powertop
     libinput
     neofetch
     pciutils
   ];

  programs = {
    fish.enable = true;
    steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
      localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
    };
  };
}
