{ pkgs, ... }:

{
  home.packages = [
    pkgs.mc
    pkgs.strace
  ];
}
