# Non-graphical packages for systemwide usage.

{ pkgs ? import <nixpkgs> {} }:

with pkgs; [
    curl
    git
    htop
    openssh
    tree
    vim
    wget
    wirelesstools
]
