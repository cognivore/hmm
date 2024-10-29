{ pkgs, ... }:

{

  # TODO: Use specialArgs! https://github.com/rengare/dotfiles/blob/979f1028aaae772a5bc9220ca86e0cd4574e5137/nix/linux/home.nix

  home.username = "sweater";
  home.homeDirectory = "/home/sweater";
  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [ ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };

  programs.home-manager.enable = true;

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  imports = [
    ./ergonomics.nix
    ./cli.nix
    ./services.nix
  ];
}
