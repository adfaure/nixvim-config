{
    plugins = {
      lsp-status.enable = true;
      lspkind.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp-nvim-lsp-document-symbol.enable = true;
      cmp-nvim-lsp-signature-help.enable = true;
      cmp-treesitter.enable = true;
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
          # python
          pyright.enable = true;
          pylsp.enable = true;
          ruff.enable = true;
          # nix
          nixd.enable = true;
          # typst
          typst-lsp.enable = true;
        };
      };
      cmp = {
          settings.sources = [
            {name = "nvim_lsp_signature_help";}
            {name = "nvim_lsp";}
            {name = "nvim_lsp_document_symbol";}
            {name = "treesitter";}
          ];
        };
      };
}
