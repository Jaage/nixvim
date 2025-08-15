{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./autocmds.nix
    ./bufferline.nix
    ./diagnostic.nix
    ./highlight.nix
    ./options.nix
    ./performance.nix
    ./keymaps.nix
    # ./usercommands.nix
    ./lsp/lsp.nix
    ./plugins/blink-cmp.nix
    ./plugins/conform-nvim.nix
    ./plugins/gitsigns.nix
    ./plugins/indent-blankline.nix
    ./plugins/lazydev.nix
    ./plugins/lz-n.nix
    ./plugins/mini.nix
    ./plugins/neo-tree.nix
    ./plugins/telescope.nix
    ./plugins/todo-comments.nix
    ./plugins/treesitter.nix
    ./plugins/whichkey.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    vim-sleuth
  ];
}
