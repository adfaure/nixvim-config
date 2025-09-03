{pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./theme.nix
    ./nvimtree.nix
    ./cmp.nix
    ./lsp.nix
    # ./telescope.nix
    ./fzf-lua.nix
  ];

  globals.mapleader = "!"; # Sets the leader key to comma
  plugins.tmux-navigator.enable = true;

  extraPlugins = [
    pkgs.vimPlugins.vim-pug
    pkgs.vimPlugins.nvim-treesitter-parsers.pug
  ];

  plugins.web-devicons.enable = true;

  plugins.airline = {
    enable = true;
    settings = {
      powerline_fonts = 1;
      skip_empty_sections = 1;
      theme = "catppuccin";
    };
  };

  # Start dashboard
  plugins.alpha = {
    enable = true;
    theme = "startify";
  };

  # bookmark files
  plugins.arrow = {
    enable = true;
    settings.show_icons = true;
  };

  clipboard.register = "unnamedplus";
  clipboard.providers.wl-copy.enable = true;
  clipboard.providers.xsel.enable = true;

  # openned tabs
  plugins.bufferline.enable = false;
  # Better yanking
  plugins.yanky.enable = true;
  # Git integration
  plugins.gitgutter.enable = true;
  plugins.fugitive.enable = true;
  # Markdown view
  plugins.glow.enable = true;
  # Highlight same workd under cursor
  plugins.illuminate.enable = true;
  # undo tree
  plugins.undotree.enable = true;
  # Code context
  # Repository is now archived and messes up with git blame
  plugins.barbecue.enable = false;

  # Languages
  plugins.typst-vim.enable = true;
  plugins.nix.enable = true;

  # Trying
  # plugins.neoscroll.enable = true;
  plugins.fidget.enable = true;

  plugins.neorg.enable = false;
  plugins.neorg.settings.lazyLoading = false;

  opts = {
    tabstop = 2;
    number = true;
    hlsearch = true;
    ignorecase = true;
    # Sets how neovim will display certain whitespace characters in the editor
    #  See `:help 'list'`
    #  See `:help 'listchars'`
    list = true;
    # NOTE: .__raw here means that this field is raw lua code
    listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";
  };

  autoCmd = [
    {
      event = ["FileType"];
      command = ":setlocal expandtab shiftwidth=2 tabstop=2";
      desc = "expandtab for html/astro files";
      pattern = [
        "html"
        "astro"
      ];
    }
  ];

  keymaps = [
    # {
    #   mode = "n";
    #   key = "m";
    #   action = "<cmd>nohlsearch<CR>";
    # }
    {
      mode = "n";
      key = "<leader>c";
      options.silent = true;
      action = "<cmd>FzfLua<cr>";
    }
    {
      # mode = "n";
      key = "<C-c>";
      action = ''"+yy'';
      options = {
        desc = "copy to the clipboard normal";
      };
    }
  ];
}
