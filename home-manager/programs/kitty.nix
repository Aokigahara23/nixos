{ pkgs, USER, ... }:

{
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;

    shellIntegration.enableFishIntegration = true;

    font = {
      name = USER.MONO_FONT + " Mono";
      size = 14;
    };

    settings = {
      enable_audio_bell = false;
      window_padding_width = 10;
      background_opacity = "0.9";
    };

    theme = "Everforest Dark Hard";
  };
}
