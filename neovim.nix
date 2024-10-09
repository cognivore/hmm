{ config, pkgs, lib, ...}:
{
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      lazy-lsp-nvim
    ];
    extraConfig = ''
    lua << EOF
    require('lazy-lsp').setup {
    }
    EOF
    '';
  };
}
