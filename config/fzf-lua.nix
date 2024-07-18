{ pkgs, ... }: {
  plugins.fzf-lua = {
    enable = true;
    settings = {
      fzf_bin = "${pkgs.skim}/bin/sk";
      fzf_opts = {
        "--layout" = "default";
        "--border" = false;
        "--no-separator" = false;
      };

      winopts = { 
        preview = { default = "bat"; }; 
      };
    };

    keymaps = {
      "<C-p>" = {
        action = "files";
        options = {
          desc = "Fzf-Lua find files";
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

      "gD" = {
        action = "lsp_references";
        options = {
          desc = "Fzf-Lua lsp ref";
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
