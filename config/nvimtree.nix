{
  plugins.nvim-tree = {
    enable = true;
    actions.windowPicker.enable = false;
    settings = {
      actions.open_file.resize_window = false;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ne";
      options.silent = true;
      action = "<cmd>NvimTreeOpen<cr>";
    }
  ];
}
