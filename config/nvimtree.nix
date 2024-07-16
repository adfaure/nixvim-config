{
  plugins.nvim-tree = {
    enable = true;
    actions.windowPicker.enable = false;
  };

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
