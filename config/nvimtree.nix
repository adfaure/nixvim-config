{
  plugins.nvim-tree.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "m";
      action = "<cmd>nohlsearch<CR>";
    }
    {
      mode = "n";
      key = "<leader>ne";
      options.silent = true;
      action = "<cmd>NvimTreeOpen<cr>";
    }
  ];
}
