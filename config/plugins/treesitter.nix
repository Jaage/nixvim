{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      c
      cpp
      json
      lua
      make
      markdown
      nix
      python
      toml
      vim
      vimdoc
      xml
      yaml
      zig
    ];
    nixvimInjections = true;
    settings = {
      highlight = {
        additional_vim_regex_highlighting = true;
        enable = true;
      };
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "ts";
          node_incremental = "tsi";
          scope_incremental = "tss";
          node_decremental = "tsd";
        };
      };
      indent.enable = true;
    };
  };
}
