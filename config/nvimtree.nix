{
  plugins.nvim-tree = {
    enable = true;
    # actions.windowPicker.enable = false;
    settings = {
      actions.open_file.resize_window = false;
      git.enable = true;
      update_focused_file = {
        enable = true;
        # update_root = true;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      options.silent = true;
      action = "<cmd>NvimTreeFindFile<cr>";
    }
    {
      mode = "n";
      key = "<leader>ne";
      options.silent = true;
      action = "<cmd>NvimTreeOpen<cr>";
    }
  ];
}
