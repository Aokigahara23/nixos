{ pkgs, COLORS, ... }:

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
        transparency = 50;

        background = "#${COLORS.BG.BG0}e6";
        foreground = "#${COLORS.FG.DEFAULT}e6";

        frame_color = "#${COLORS.FG.DEFAULT}e6";
      };

      urgency_low = {
        frame_color = "#${COLORS.FG.GREEN}e6";
      };

      urgency_medium = {
        frame_color = "#${COLORS.FG.YELLOW}e6";
      };

      urgency_critical = {
        frame_color = "#${COLORS.FG.RED}e6";
      };
    };
  };
}
