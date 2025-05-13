{self, ...}: {
  keymaps = [
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
    }
    # Diagnostic keymaps
    {
      mode = "n";
      key = "<leader>q";
      action = "vim.diagnostic.setloclist";
      options.desc = "Open diagnostic [Q]uickfix list";
    }
    {
      mode = "n";
      key = ";";
      action = ":";
      options.desc = "Enter Command Mode";
    }
    # -- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
    # -- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
    # -- is not what someone will guess without a bit more experience.
    # --
    # -- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
    # -- or just use <C-\><C-n> to exit terminal mode
    # -- vim.keymap.set({ 'n', 'i', 't' }, '<M-i>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
    #
    # -- Keybinds to make split navigation easier.
    # --  Use CTRL+<hjkl> to switch between windows
    # --  See `:help wincmd` for a list of all window commands
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w><C-h>";
      options.desc = "Move focus to the left window";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w><C-l>";
      options.desc = "Move focus to the right window";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w><C-j>";
      options.desc = "Move focus to the lower window";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w><C-k>";
      options.desc = "Move focus to the upper window";
    }
  ];
}
