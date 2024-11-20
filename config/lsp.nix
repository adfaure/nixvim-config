{
  plugins = {
    # For Rust ?
    rustaceanvim.enable = true;

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
          gc = "declaration";
          # gD = "references";
          gt = "type_definition";
          gi = "implementation";
          K = "hover";
          "<F2>" = "rename";
          # Execute a code action, usually your cursor needs to be on top of an error
          # or a suggestion from your LSP for this to activate.
          "<leader>f" = {
            action = "code_action";
            desc = "LSP: [C]ode [A]ction";
          };
        };

      };

      servers = {
        clangd.enable = true;
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
        # Rust
        # rust-analyzer.enable = true;
        helm_ls.enable = true;
      };
    };
  };
}
