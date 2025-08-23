{
  lsp.servers.clangd = {
    enable = true;
    settings = {
      cmd = [
        "--fallback-style=llvm"
      ];
    };
  };
}
