{ pkgs, ... }:

{
  home.packages = [
    # Nix
    pkgs.nixd
    pkgs.nixfmt-rfc-style
  ];
}
