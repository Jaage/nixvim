{
  plugins.leap = {
    enable = true;
  };

  keymaps = [
    {
      mode = [
        "n"
        "o"
        "x"
      ];
      key = "<leader>l";
      action = "<Plug>(leap)";
      options.desc = "Leap within window";
    }
    {
      mode = "n";
      key = "<leader>L";
      action = "<Plug>(leap-from-window)";
      options.desc = "Leap to other windows";
    }
  ];
}
