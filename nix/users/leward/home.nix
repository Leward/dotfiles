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

      extensions = with pkgs.vscode-extensions; [
          bbenoist.Nix
      ] 
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "java";
          publisher = "redhat";
          version = "0.61.0";
          sha256 = "d64297fb96e42b184a580d3d7227dcdc7c90c287d22368e0b7dc78a63ffdd8d6";
        }
      ];
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
