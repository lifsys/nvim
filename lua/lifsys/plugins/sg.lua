return {
  -- 'github/copilot.vim',
  -- config = function()
  --     copilot_assume_mapped = true  -- 'v:true' in Vimscript becomes 'true' in Lua
  -- end,
  "sourcegraph/sg.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("sg").setup()
  end,
}