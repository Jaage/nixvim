{
  plugins.fzf-lua = {
    enable = true;
    settings = {
      fzf-opts = {
        "--layout" = "default";
      };
      winopts = {
        preview = {
          default = "bat";
        };
      };
    };

    keymaps = {
      "<leader>sh" = {
        mode = "n";
        action = "helptags";
        options.desc = "[S]earch [H]elp";
      };
      "<leader>sk" = {
        mode = "n";
        action = "keymaps";
        options.desc = "[S]earch [K]eymaps";
      };
      "<leader>sf" = {
        mode = "n";
        action = "files";
        options.desc = "[S]earch [F]iles";
      };
      "<leader>ss" = {
        mode = "n";
        action = "builtin";
        options.desc = "[S]earch [S]elect FzfLua";
      };
      "<leader>sw" = {
        mode = "n";
        action = "grep_cword";
        options.desc = "[S]earch current [W]ord";
      };
      "<leader>sg" = {
        mode = "n";
        action = "live_grep";
        options.desc = "[S]earch by [G]rep";
      };
      "<leader>sd" = {
        mode = "n";
        action = "diagnostics_document";
        options.desc = "[S]earch [D]iagnostics docment";
      };
      "<leader>sr" = {
        mode = "n";
        action = "resume";
        options.desc = "[S]earch [R]esume";
      };
      "<leader>s." = {
        mode = "n";
        action = "oldfiles";
        options.desc = "[S]earch Recent Files ('.' for repeat)";
      };
      "<leader><leader>" = {
        mode = "n";
        action = "buffers";
        options.desc = "[ ] Find existing buffers";
      };
      "<leader>/" = {
        mode = "n";
        action = "blines";
        options.desc = "[/] Fuzzily search in current buffer";
      };
      "<leader>s/" = {
        mode = "n";
        action = "lines";
        options.desc = "[S]earch [/] in Open Files";
      };

    };
  };

  # These keymaps need to call the function with arguments so must use .__raw
  keymaps = [
    {
      mode = "n";
      key = "<leader>sn";
      action.__raw = ''
        function()
          require("fzf-lua").files({ cwd = '~/repos/nixvim/' })
        end
      '';
      options.desc = "[S]earch [N]eovim files";
    }
  ];
}
