return {
  {
    "Exafunction/codeium.vim",
    enabled = true,
    version = "1.8.37",
    config = function()
      vim.keymap.set("i", "<C-l>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
    end,
  },
}
