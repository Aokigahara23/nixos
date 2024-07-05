{ pkgs, ... }:

{
  imports = [
    ./pipewire.nix
    ./tlp.nix
  ];

  services = {
    openssh.enable = true;
    libinput.enable = true;
    blueman.enable = true;
    timesyncd.enable = true;

    gnome.gnome-keyring.enable = true;

    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
        options = "";
      };
      excludePackages = [ pkgs.xterm ];
    };

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      enableHidpi = true;
      package = pkgs.kdePackages.sddm;
    };   
  };
}
