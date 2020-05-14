# How to use

 * ...
 * ...

# Notes

`/etc/nixos/configuration.nix` is the default config location, it can be changed with a flag. 
For example: `sudo nixos-rebuild build -I nixos-config=/home/leward/dotfiles/nix/xps-13/configuration.nix`

Building something from other stuff is called a derivation in Nix. We perform a derivation by calling stdenv.mkDerivation.

Links: 

 - [Expression Syntax - NixOS manual](https://nixos.org/nix/manual/#sec-expression-syntax)
 - [Managing configuration.nix and home.nix - Reddit](https://www.reddit.com/r/NixOS/comments/ec3je7/managing_configurationnix_and_homenix/)
 - https://github.com/romatthe/ronix