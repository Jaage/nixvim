{ config, lib, ... }:
{
  keymaps = lib.mkIf (config.plugins.mini.enable && lib.hasAttr "files" config.plugins.mini.modules) [
    {
      mode = "n";
      key = "<leader>F";
      action.__raw = ''
        function()
          require("mini.files").open();
        end
      '';
      options = {
        desc = "Open mini.files file viewer";
      };
    }
  ];
  plugins.mini = {
    enable = true;
    modules = {
      files = { };
    };
  };
}
