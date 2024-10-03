{ pkgs, ... }: {
  plugins.fzf-lua = {
    enable = true;
    settings = {
      fzf_bin = "${pkgs.skim}/bin/sk";
      fzf_color = true;
      fzf_opts = {
        "--layout" = "default";
        "--border" = false;
        "--no-separator" = false;
      };
      # FIXME: Highlight color is difficult to read in grep mode and bat
      # winopts = {
      #   preview = { default = "bat"; };
      # };
    };

    keymaps = {
      "<C-p>" = {
        action = "files";
        options = {
          desc = "Fzf-Lua find files";
          silent = true;
        };
      };

      "<leader>g" = {
        action = "grep_cword";
        options = {
          desc = "Fzf-Lua lsp ref";
          silent = true;
        };
      };

      "<leader>s" = {
        action = "lsp_document_symbols";
        options = {
          desc = "Fzf-Lua symbols";
          silent = true;
        };
      };


      "<C-s>" = {
        action = "lsp_live_workspace_symbols";
        options = {
          desc = "Fzf-Lua live grep";
          silent = true;
        };
      };

      "<C-g>" = {
        action = "live_grep";
        options = {
          desc = "Fzf-Lua live grep";
          silent = true;
        };
      };

      "gr" = {
        action = "lsp_references";
        options = {
          desc = "Fzf-Lua lsp ref";
          silent = true;
        };
      };


      "<leader>r" = {
        action = "resume";
        options = {
          desc = "Fzf-Lua resume";
          silent = true;
        };
      };
    };
  };
}
