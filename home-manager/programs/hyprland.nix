{ USER, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {

      autogenerated = 0;

      monitor = "eDP-2,3200x2000@60,0x0,2";

      xwayland = {
        force_zero_scaling = true;
      };

      "$terminal" = USER.TERMINAL; 
      "$menu" = "rofi -show drun";

      general = {
        gaps_in = 5;
        gaps_out = 15;
        border_size = 2;

        "col.active_border" = "rgb(E6C384)";
        "col.inactive_border" = "rgb(363646)";
      };

      decoration = {
        rounding = 10;
      };

      windowrule = [
        "float,^(pavucontrol-qt)$"
        "workspace 3, ^(code)$"
      ];

      input = {
        kb_layout = "us,ru";
        kb_options = "caps:swapescape,grp:alt_shift_toggle";
        follow_mouse = 0;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
          scroll_factor = "0.2";
        };
      };


      animations = {
        enabled = true;
        bezier = [
          "overshot,0.05,0.9,0.1,1.1"
          "overshot,0.13,0.99,0.29,1."
        ];
        animation = [
          "windows,1,7,overshot,slide"
          "border,1,10,default"
          "fade,1,10,default"
          "workspaces,1,7,overshot,slidevert"
        ];
      };

      "$mod" = "SUPER";

      bind = [
        "$mod, T, exec, $terminal"
        "$mod, W, killactive"
        "$mod, Q, exit"
        "$mod, S, exec, grim -g \"$(slurp -d)\" - | wl-copy"
        "ALT, space, exec, $menu"

        "$mod_CTRL, right, exec, brightnessctl set 10%+"
        "$mod_CTRL, left, exec, brightnessctl set 10%-"

        "$mod_CTRL, up, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        "$mod_CTRL, down, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"

        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"

        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
      ];
    };
  };
}