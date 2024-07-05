{ pkgs, lib, ... }:

{
  programs.starship = {
    enable = true;
    package = pkgs.starship;

    enableFishIntegration = true;

    settings = {
      format = lib.concatStrings [
        "$character"
      ];

      right_format = lib.concatStrings [
        "$all"
      ];

      directory = {
        truncation_length = 4;
        style = "bold";
        read_only = " 󰌾";
      };

    };
  };
}
