
{
  plugins.multicursors.enable = true;

  keymaps = [
    {
      mode = [ "n" "v" ];
      key = "<C-n>";
      action = "<cmd>MCstart<cr>";
      options.desc = "Start [M]ulticursors";
    }
  ];
}
