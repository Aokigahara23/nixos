{ pkgs, COLORS, ... }:

{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    systemd.enable = true;

    settings = {

      mainBar = {
        layer = "top";
        position = "top";
        height = 40;
        margin = "15 15 0 15";
        output = [
          "eDP-2"
        ];

        modules-right = [ "hyprland/language" "bluetooth" "clock" ];
        modules-center = [ "hyprland/workspaces" ];
        modules-left = [  "cpu" "memory" "temperature" "battery" "wireplumber" "backlight" ];

        "hyprland/workspaces" = {
          format = "{icon}";
          disable-scroll = true;
          all-outputs = true;
          format-icons = {
            "1" = "";
            "2" = "";
            "3" = "";
            "4" = "";
            "5" = "";
            "6" = "󰿎";
            urgent = "";
            default = "";
            active = "";
          };
          persistent-workspaces = {
            "1" = [];
            "2" = [];
            "3" = [];
            "4" = [];
          };
          sort-by-number = true;
        };

        "battery" = {
          format = "{icon}  {capacity}%";
          format-icons = ["" "" "" "" ""];
        };

        "clock" = {
          format = "󰃭 {:%a %d/%m/%y  %H:%M}";
        };

        "cpu" = {
          interval = 5;
          max-length = 30;
          format = "  {load}%";
        };

        "memory" = {
          interval = 30;
          max-length = 30;
          format = "  {}%";
        };

        "temperature" = {
          format = " {temperatureC}°C";
          max-length = 30;
        };

        "backlight" = {
            "format" = "{icon} {percent}%";
            "format-icons" = ["" ""];
        };

        "bluetooth" = {
          format = " {status}";
          format-disabled = " disconnected";
          format-connected = " {device_alias}";
          format-connected-battery = " {device_alias} {device_battery_percentage}%";

          on-click = "rofi-bluetooth";

          tooltip-format = "{controller_alias}\t{controller_address}\n\n{num_connections} connected";
          tooltip-format-connected = "{controller_alias}\t{controller_address}\n\n{num_connections} connected\n\n{device_enumerate}";
          tooltip-format-enumerate-connected = "{device_alias}\t{device_address}";
          tooltip-format-enumerate-connected-battery = "{device_alias}\t{device_address}\t{device_battery_percentage}%";
        };

        "wireplumber" = {
            format = "{icon}  {volume}%";
            format-muted = "";
            on-click = "pavucontrol-qt";
            format-icons = ["" "" ""];
        };

        "hyprland/language" = {
          format = "{short}";
        };
      };
    };

    style = ''
      * {
        border-radius: 10px;
        font-family: "JetbrainsMono Nerd Font" ;
        font-size: 15px;
        min-height: 10px;
      }

      window#waybar {
        background: rgba(39, 46, 51, 0.9);
        border-radius: 10px;
        border: 2px solid #${COLORS.FG.STATUS_LINE1};
        transition: none;
      }

      tooltip {
        background: rgba(39, 46, 51, 0.9);
        border: 2px solid #${COLORS.FG.STATUS_LINE1};
        border-radius: 5px;
        padding: 5px;
        text-shadow: none;
      }

      tooltip * {
        color: #${COLORS.FG.DEFAULT};
        text-shadow: none;
      }

      #workspaces {
        padding-left: 0px;
        padding-right: 0px;
        margin-left: 0px;
        margin-right: 0px;

        transition: none;
        background: transparent;
      }

      #workspaces button {
        color: #${COLORS.FG.DEFAULT};
        padding-left: 10px;
        padding-right: 10px;
        margin: 0px;
      }

      #workspaces button.active {
        color: #${COLORS.FG.STATUS_LINE1};
      }

      .modules-left *,
      .modules-right * {
        padding-left: 10px;
        padding-right: 10px;
        margin-left: 5px;
        margin-right: 5px;

        transition: none;
        color: #${COLORS.FG.DEFAULT};
        background: transparent;
      }

      #cpu {
        color: #${COLORS.FG.RED};
      }

      #memory {
        color: #${COLORS.FG.ORANGE};
      }

      #temperature {
        color: #${COLORS.FG.BLUE};
      }

      #temperature.criticl {
        color: #${COLORS.FG.RED};
      }

      #bluetooth.on {
        color: #${COLORS.FG.BLUE};
      }

      #bluetooth.off {
        color: #${COLORS.BG.BLUE};
      }

      #backlight {
        color: #${COLORS.FG.YELLOW};
      }
    
      #wireplumber {
        color: #${COLORS.FG.PURPLE};
      }
      
      #battery {
        color: #${COLORS.FG.AQUA};
      }

      #clock {
        color: #${COLORS.FG.ORANGE};
      }
    '';
  };
}
