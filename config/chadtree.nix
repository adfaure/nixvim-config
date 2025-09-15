{
  plugins.chadtree = {
    enable = true;
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
