{ config, pkgs, ... }:

{
  programs.home-manager = {
    enable = true;
  };

  home.packages = with pkgs; [
      # Nix Related
      niv

      # CLI
      ripgrep

      # GUI
      ark
      dropbox
      jetbrains.goland
      jetbrains.idea-ultimate
      kate
      kcalc
      keepassx2
      ksystemlog
      okular
      # touchegg
      unstable.openttd
      shutter
      spectacle
  ];

  programs.chromium = {
    enable = true;
  };

  programs.firefox = {
      enable = true;
  };

  programs.git = {
    enable = true;
    userName = "Leward";
    userEmail = "pj82491@gmail.com";
    ignores = [".idea/"];
  };

  programs.vscode = {
      enable = true;
      package = pkgs.vscode;
      extensions = (with pkgs.vscode-extensions; [
          pkgs.vscode-extensions.bbenoist.Nix
      ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [{
          name = "gitlens";
          publisher = "eamodio";
          version = "10.2.1";
          sha256 = "27b9d054690c0da3dc34e8e59077c7ede92ad9374a951ac93ae5440f84e606ae";
      }];
      userSettings = {
        "keyboard.dispatch" = "keyCode";
        "update.channel" = "none";
      };
  };

  programs.fish = {
    enable = true;
    # shellInit = ''
    #  eval "(direnv hook fish)"
    # '';
  };

  programs.direnv = {
    enable = true;
    enableFishIntegration = true;
  };
  
}
