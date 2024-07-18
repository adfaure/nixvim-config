{
  plugins = {
    lsp-status.enable = true;
    lspkind.enable = true;
    treesitter.enable = true;
    lsp = {
      enable = true;

      keymaps = {
        silent = true;
        diagnostic = {
          # Navigate in diagnostics
          "<leader>k" = "goto_prev";
          "<leader>j" = "goto_next";
        };

        lspBuf = {
          gd = "definition";
          # gD = "references";
          gt = "type_definition";
          gi = "implementation";
          K = "hover";
          "<F2>" = "rename";
        };

      };

      servers = {
        # Python
        pyright.enable = true;
        # Buggy it seems
        # pylsp.enable = true;
        ruff.enable = true;
        # Nix
        nixd.enable = true;
        # Typst
        typst-lsp.enable = true;
        # Typescript
        tsserver.enable = true;
      };
    };
  };
}
