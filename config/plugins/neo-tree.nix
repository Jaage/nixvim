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
    closeIfLastWindow = true;
    filesystem = {
      filteredItems = {
        hideDotfiles = false;
        hideHidden = false;
        visible = true;
      };
      followCurrentFile = {
        enabled = true;
        leaveDirsOpen = true;
      };
      useLibuvFileWatcher.__raw = ''vim.fn.has "win32" ~= 1'';
    };
  };
}
