{ config, lib, ... }:
{
  keymaps = lib.mkIf config.plugins.neo-tree.enable [
    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>Neotree action=focus reveal toggle<CR>";
      options.desc = "Toggle Neo-tree file explorer";
    }
  ];

  plugins.neo-tree = {
    enable = true;
    settings = {
      close_if_last_window = true;
      filesystem = {
        filtered_items = {
          hide_dotfiles = false;
          hide_hidden = false;
          visible = true;
        };
        follow_current_file = {
          enabled = true;
          leave_dirs_open = true;
        };
        use_libuv_file_watcher.__raw = ''vim.fn.has "win32" ~= 1'';
      };
    };
  };
}
