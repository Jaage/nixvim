{
  lsp.servers.clangd = {
    enable = true;
    settings = {
      cmd = [
        "clangd"
        "--fallback-style=llvm"
      ];
    };
  };
}
