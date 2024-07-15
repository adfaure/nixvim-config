{ pkgs, ... }: {
  # Import all your configuration modules here
  imports = [ ./telescope.nix ./theme.nix ./nvimtree.nix ./cmp.nix ./lsp.nix ];

  globals.mapleader = "!"; # Sets the leader key to comma

  extraPlugins = with pkgs.vimPlugins; [ ctrlp ];
  extraConfigVim = ''
    nmap <leader>p :CtrlP<cr>
  '';

  plugins.tmux-navigator.enable = true;
  plugins.airline.enable = true;
  # Start dashboard
  plugins.alpha = {
    enable = true;
    theme = "startify";
  };

  # bookmark files
  plugins.arrow.enable = true;
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
  plugins.navic.enable = true;
  plugins.nix.enable = true;
  plugins.undotree.enable = true;

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
  ];
}
