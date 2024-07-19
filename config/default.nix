{ ... }: {
  # Import all your configuration modules here
  imports = [
    ./theme.nix
    ./nvimtree.nix
    ./cmp.nix
    ./lsp.nix
    # ./telescope.nix
    ./fzf-lua.nix
    ./harpoon.nix
  ];

  globals.mapleader = "!"; # Sets the leader key to comma
  plugins.tmux-navigator.enable = true;

  plugins.airline = {
    enable = true;
    settings = {
      powerline_fonts = true;
      skip_empty_sections = true;
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

  # openned tabs
  plugins.bufferline.enable = true;
  # Better yanking
  plugins.neoclip.enable = true;
  # Git integration
  plugins.gitgutter.enable = true;
  # Markdown view
  plugins.glow.enable = true;
  # Highlight same workd under cursor
  plugins.illuminate.enable = true;
  # undo tree
  plugins.undotree.enable = true;
  # Code context
  plugins.barbecue.enable = true;

  # Languages
  plugins.typst-vim.enable = true;
  plugins.nix.enable = true;

  # Trying
  plugins.neoscroll.enable = true;
  plugins.fidget.enable = true;

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

  keymaps = [
    {
      mode = "n";
      key = "m";
      action = "<cmd>nohlsearch<CR>";
    }
    {
      mode = "n";
      key = "<leader>c";
      options.silent = true;
      action = "<cmd>Telescope neoclip<cr>";
    }
    {
      mode = "n";
      key = "<C-H>";
      options.silent = true;
      action = "<cmd>TmuxNavigateLeft<cr>";
    }
  ];
}
