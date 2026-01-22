{
  plugins.chadtree = {
    enable = true;
    # ignore = {
    #   nameExact = [ "__pycache__" ".git" ];
    # };
    # https://github.com/nix-community/nixvim/issues/4154#issuecomment-3786327226
    settings = {
      xdg = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>nc";
      options.silent = true;
      action = "<cmd>CHADopen<cr>";
    }
  ];
}
