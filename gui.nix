{ pkgs, ... }:

{
  home.packages = [
    pkgs.stalonetray
    pkgs.remmina
  ];
}
