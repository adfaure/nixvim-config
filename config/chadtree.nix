{
  plugins.chadtree = {
    enable = true;
    # ignore = {
    #   nameExact = [ "__pycache__" ".git" ];
    # };
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
