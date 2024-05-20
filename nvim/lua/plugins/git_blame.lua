return {
  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd("highlight default link gitblame SpecialComment")
      vim.g.gitblame_enabled = 0
      vim.g.gitblame_message_template = " <author> • <date> • <summary> • <sha>"
      vim.g.gitblame_message_when_not_committed = "Oh please, commit this !"
      -- vim.g.gitblame_virtual_text_column = 120
    end,
  },
}
