{ pkgs, USER, COLORS, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    theme = "custom";
    plugins = [
      pkgs.rofi-rbw
      pkgs.rofi-systemd
      pkgs.rofi-bluetooth
    ];
    extraConfig = {
      modi = "run,drun,window";
      icon-theme = "Numix-Circle";
      show-icons = true;
      terminal = USER.TERMINAL;
      drun-display-format = "{icon} {name}";
      location = 0;
      disable-history = false;
      hide-scrollbar = true;
      display-drun = "   Apps ";
      display-run = "   Run ";
      display-window = " 󰕰  Window";
      display-Network = " 󰤨  Network";
      sidebar-mode = true;
    };
  };

  xdg.configFile."rofi/custom.rasi".text = ''
	* {
	    bg-col: #e6${COLORS.BG.BG0};
	    bg-col-light: #e6${COLORS.BG.BG2};
	    border-col: #e6${COLORS.FG.STATUS_LINE1};
	    selected-col: #e6${COLORS.FG.YELLOW};
	    blue: #e6${COLORS.FG.STATUS_LINE1};
	    fg-col: #e6${COLORS.FG.DEFAULT};
	    fg-col2: #e6${COLORS.BG.BG0};
	    grey: #e6${COLORS.FG.GREY0};

	    width: 600;
	    font: "JetBrainsMono Nerd Font 14";
	}

	element-text, element-icon , mode-switcher {
	    background-color: inherit;
	    text-color:       inherit;
	}

	window {
	    height: 360px;
	    border: 2px;
      border-radius: 10px;
	    border-color: @border-col;
	    background-color: @bg-col;
	}

	mainbox {
	    background-color: @bg-col;
	}

	inputbar {
	    children: [prompt,entry];
	    background-color: @bg-col;
	    border-radius: 5px;
	    padding: 2px;
	}

	prompt {
	    background-color: @blue;
	    padding: 6px;
	    text-color: @bg-col;
	    border-radius: 3px;
	    margin: 20px 0px 0px 20px;
	}

	textbox-prompt-colon {
	    expand: false;
	    str: ":";
	}

	entry {
	    padding: 6px;
	    margin: 20px 0px 0px 10px;
	    text-color: @fg-col;
	    background-color: @bg-col;
	}

	listview {
	    border: 0px 0px 0px;
	    padding: 6px 0px 0px;
	    margin: 10px 0px 0px 20px;
	    columns: 2;
	    lines: 5;
	    background-color: @bg-col;
	}

	element {
	    padding: 5px;
	    background-color: @bg-col;
	    text-color: @fg-col  ;
	}

	element-icon {
	    size: 25px;
	}

	element selected {
	    background-color:  @selected-col ;
	    text-color: @fg-col2  ;
	}

	mode-switcher {
	    spacing: 0;
	  }

	button {
	    padding: 10px;
	    background-color: @bg-col-light;
	    text-color: @grey;
	    vertical-align: 0.5; 
	    horizontal-align: 0.5;
	}

	button selected {
	  background-color: @bg-col;
	  text-color: @blue;
	}

	message {
	    background-color: @bg-col-light;
	    margin: 2px;
	    padding: 2px;
	    border-radius: 5px;
	}

	textbox {
	    padding: 6px;
	    margin: 20px 0px 0px 20px;
	    text-color: @blue;
	    background-color: @bg-col-light;
	}
  '';
}
