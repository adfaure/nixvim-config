{pkgs, ...}: {
  plugins = let
    pyright-package = import ./pyright.nix {inherit pkgs;};
  in {
    # For Rust ?
    rustaceanvim.enable = true;

    lsp-status.enable = true;
    lspkind.enable = true;
    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
      };
    };

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
          # Handled with fzf-lua
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
        elixirls.enable = true;
        html.enable = true;
        clangd.enable = true;
        # Python
        pyright = {
          package = pyright-package.pyright-wrapper;
          enable = true;
        };
        # pylyzer doesn't seem to pickup the current python installation
        # pylyzer = {
        #   # package = pyright-package.pylyzer-wrapper;
        #   enable = true;
        # };
        ruff.enable = true;
        # Nix
        nixd.enable = true;
        # Typst
        # Has it been removed ?
        # typst-lsp.enable = true;
        # Typescript
        tsserver.enable = true;
        protols.enable = true;
        # Rust
        # rust-analyzer.enable = true;
        helm_ls.enable = true;
        # Haskell
        astro.enable = true;
        hls.enable = true;
      };
    };
  };
}
