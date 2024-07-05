{ pkgs, ... }:

{
  services.dunst = {
    enable = true;

    settings = {
      global = {
        font = "JetBrainMono Nerd Font";
        corner_radius = 10;
        padding = 10;
        gap_size = 5;
        width = 300;
        height = 300;
        offset = "30x30";
        iconTheme =  "Numix-Circle";

        background = "#1F1F28";
        foreground = "#DCD7BA";

        frame_color = "#E6C384";
      };
    };
  };
}
