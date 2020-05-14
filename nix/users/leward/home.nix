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
      extensions = [
          pkgs.vscode-extensions.bbenoist.Nix
      ];
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
