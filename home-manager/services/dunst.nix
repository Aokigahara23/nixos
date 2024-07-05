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
        transparency = 10;

        background = "#${COLORS.BG.BG0}";
        foreground = "#${COLORS.FG.DEFAULT}";

        frame_color = "#${COLORS.FG.DEFAULT}";
      };

      urgency_low = {
        frame_color = "#${COLORS.FG.GREEN}";
      };

      urgency_medium = {
        frame_color = "#${COLORS.FG.YELLOW}";
      };

      urgency_critical = {
        frame_color = "#${COLORS.FG.RED}";
      };
    };
  };
}
