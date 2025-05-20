{ lib, pkgs, ... }:
{
  plugins.conform-nvim = {
    enable = true;
    lazyLoad.settings = {
      cmd = [ "ConformInfo" ];
      event = [ "BufWritePre" ];
    };
    luaConfig.pre = ''
      local slow_format_filetypes = {}
    '';
    settings = {
      default_format_opts = { lsp_format = "fallback"; };

      format_on_save = ''
        function(bufnr)
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end

          if slow_format_filetypes[vim.bo[bufnr].filetype] then
            return
          end

          local function on_format(err)
            if err and err:match("timeout$") then
              slow_format_filetypes[vim.bo[bufnr].filetype] = true
            end
          end

          return { timeout_ms = 200, lsp_fallback = true }, on_format
         end
      '';
      format_after_save = ''
        function(bufnr)
          if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
          end

          if not slow_format_filetypes[vim.bo[bufnr].filetype] then
            return
          end

          return { lsp_fallback = true }
        end
      '';

      formatters_by_ft = {
        c = [ "clang_format" ];
        cpp = [ "clang_format" ];
        json = [ "jq" ];
        lua = [ "stylua" ];
        nix = [ "nixfmt" ];
        sh = [
          "shellcheck"
          "shellharden"
          "shfmt"
        ];
        toml = [ "taplo" ];
        yaml = [ "yamlfmt" ];
        zig = [ "zigfmt" ];
        "_" = [
          "trim_whitespace"
          "trim_newlines"
        ];

        formatters = {
          jq.command = lib.getExe pkgs.jq;
          nixfmt = lib.getExe pkgs.nixfmt-rfc-style;
          shellcheck.command = lib.getExe pkgs.shellcheck;
          shellharden.command = lib.getExe pkgs.shellharden;
          shfmt.command = lib.getExe pkgs.shfmt;
          stylua.command = lib.getExe pkgs.stylua;
          taplo.command = lib.getExe pkgs.taplo;
          yamlfmt.commnd = lib.getExe pkgs.yamlfmt;
          zigfmt.command = "~/bin/zig/master/zig";
        };
      };
    };
  };
}
