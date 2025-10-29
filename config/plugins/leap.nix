{
  plugins.leap = {
    enable = true;
    addDefaultMappings = false;
  };

  keymaps = [
    {
      mode = [
        "n"
        "o"
        "x"
      ];
      key = "<leader>l";
      action.__raw = ''
        function()
          require("leap").leap {
            windows = { vim.api.nvim_get_current_win() },
            inclusive = true
          }
        end
      '';
      options.desc = "Leap within window";
    }
    {
      mode = "n";
      key = "<leader>L";
      action.__raw = ''
        function()
          require("leap").leap {
            windows = require("leap.util").get_enterable_windows()
          }
        end
      '';
      options.desc = "Leap to other windows";
    }
  ];
}
