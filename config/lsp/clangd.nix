{
  lsp.servers.clangd = {
    enable = true;
    config = {
      cmd = [
        "clangd"
        "--fallback-style=llvm"
      ];
    };
  };
}
