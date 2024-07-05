{ USER, ... }:

{
  programs.hyprlock = {
    enable = true;

    settings = {
      background = {
          monitor = "";
          path = "~/Pics/wp.jpg";
          blur_passes = 2;
          contrast = "0.8916";
          brightness = "0.8172";
          vibrancy = "0.1696";
          vibrancy_darkness = "0.0";
      };

      general = {
          no_fade_in = false;
          grace = 0;
          disable_loading_bar = false;
      };

      input-field = {
        monitor = "";
        size = "250, 60";
        outline_thickness = 2;
        dots_size = "0.2";
        dots_spacing = "0.2";
        dots_center = true;
        outer_color = "rgba(0, 0, 0, 0)";
        inner_color = "rgba(100, 114, 125, 0.5)";
        font_color = "rgb(200, 200, 200)";
        fade_on_empty = false;
        font_family = USER.MONO_FONT;
        placeholder_text = "<i><span foreground=\"##ffffff99\">Hi, \$USER</span></i>";
        hide_input = false;
        position = "0, -140";
        halign = "center";
        valign = "center";
      };

      image = {
        monitor = "";
        path = "~/Pics/face.jpg";
        rounding = "-1";
        border_size = 4;
        border_color = "rgb(221, 221, 221)";
        position = "0, 0";
        halign = "center";
        valign = "center";
      };
    };
  };
}
