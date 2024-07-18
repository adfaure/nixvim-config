{
  plugins.telescope.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "<leader>ff";
      options.silent = true;
      action = "<cmd>Telescope find_files<cr>";
    }
    {
      mode = "n";
      key = "<leader>fg";
      options.silent = true;
      action = "<cmd>Telescope live_grep<cr>";
    }
    {
      mode = "n";
      key = "<leader>fb";
      options.silent = true;
      action = "<cmd>Telescope buffers<cr>";
    }
    {
      mode = "n";
      key = "<leader>fh";
      options.silent = true;
      action = "<cmd>Telescope help_tags<cr>";
    }
    {
      mode = "n";
      key = "gD";
      options.silent = true;
      action = "<cmd>Telescope lsp_references<cr>";
    }
    {
      mode = "n";
      key = "<leader>g";
      options.silent = true;
      action = "<cmd>Telescope grep_string<cr>";
    }
    {
      mode = "n";
      key = "<leader>r";
      options.silent = true;
      action = "<cmd>Telescope resume<cr>";
    }
  ];
}
