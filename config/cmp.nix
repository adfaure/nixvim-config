{
  plugins.cmp-path.enable = true;

  plugins = {
    cmp-buffer.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;
    cmp-treesitter.enable = true;

    cmp = {
      enable = true;

      settings = {
        snippet.expand =
          "function(args) require('luasnip').lsp_expand(args.body) end";

        # Thanks! https://github.com/JMartJonesy/kickstart.nixvim/blob/7934542168d08a69b3523c4e700e19ec016511a1/plugins/nvim-cmp.nix#L63
        mapping = {
          # Select the [n]ext item
          "<C-n>" = "cmp.mapping.select_next_item()";
          # Select the [p]revious item
          "<C-p>" = "cmp.mapping.select_prev_item()";
          # Scroll the documentation window [b]ack / [f]orward
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          # Accept ([y]es) the completion.
          #  This will auto-import if your LSP supports it.
          #  This will expand snippets if the LSP sent a snippet.
          "<C-y>" = "cmp.mapping.confirm { select = true }";
          # If you prefer more traditional completion keymaps,
          # you can uncomment the following lines.
          # "<CR>" = "cmp.mapping.confirm { select = true }";
          # "<Tab>" = "cmp.mapping.select_next_item()";
          # "<S-Tab>" = "cmp.mapping.select_prev_item()";

          # Manually trigger a completion from nvim-cmp.
          #  Generally you don't need this, because nvim-cmp will display
          #  completions whenever it has completion options available.
          "<C-Space>" = "cmp.mapping.complete {}";
        };

        sources = [
          { name = "nvim_lsp"; }
          { name = "nvim_lsp_document_symbol"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "treesitter"; }
          { name = "path"; }
          {
            name = "buffer";
            # Words from other open buffers can also be suggested.
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
        ];
      };
    };
  };
}
