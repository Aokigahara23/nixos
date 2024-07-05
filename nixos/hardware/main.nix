{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nvidia.nix
  ];

  hardware = {
    enableAllFirmware = true;

    bluetooth.enable = true;
    graphics.enable = true;
  };
}
