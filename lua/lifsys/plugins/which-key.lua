return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    require("which-key").setup({})
    require("which-key").register({
      ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
      ["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
      ["<leader>h"] = { name = "Git [H]unk", _ = "which_key_ignore" },
      ["<C-\\>"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
      ["<S-t>"] = { "<cmd>lua require('nvterm.terminal').toggle('float')<cr>", "Floating Terminal" },
      ["<C-S-H>"] = { "<cmd>lua require('nvterm.terminal').toggle('horizontal')<cr>", "Horizontal Terminal" },
      ["<C-S-V>"] = { "<cmd>lua require('nvterm.terminal').toggle('vertical')<cr>", "Vertical Terminal" },
      ["<C-?>"] = { "<cmd>ChatGPT<cr>", "ChatGPT" },
    }, { mode = "n" })
    require("which-key").register({
      ["<leader>"] = { name = "VISUAL <leader>" },
      ["<leader>h"] = { "Git [H]unk" },
    }, { mode = "v" })
  end,
}
