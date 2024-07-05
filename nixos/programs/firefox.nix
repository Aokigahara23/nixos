{ ... }:

{
  programs.firefox = {
    enable = true;

    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      EnableTrackingProtection = {
        Value= true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };

      DisablePocket = true;
      DisableFirefoxAccounts = true;
      DisableAccounts = true;
      DisableFirefoxScreenshots = true;
      OverrideFirstRunPage = "";
      OverridePostUpdatePage = "";
      DontCheckDefaultBrowser = true;
      DisplayBookmarksToolbar = "never"; # alternatives: "always" or "newtab"
      DisplayMenuBar = "default-off"; # alternatives: "always", "never" or "default-on"
      SearchBar = "unified";

      ExtensionSettings = {
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
        };
        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4307738/bitwarden_password_manager-2024.6.3.xpi";
          installation_mode = "force_installed";
        };
        "FirefoxColor@mozilla.com" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/3643624/firefox_color-2.1.7.xpi";
          installation_mode = "force_installed";
        };
        "{077f039d-66b1-4bc2-a649-a8cb2ff35f66}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4314723/forest23_everforest_dark_hard-1.0.xpi";
          installation_mode = "force_installed";
        };
      };
    };
  };
}
