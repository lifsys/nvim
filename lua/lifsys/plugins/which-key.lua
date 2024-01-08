return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    require('which-key').setup {
      plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
          enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
          suggestions = 20, -- how many suggestions should be shown in the list?
        },
        presets = {
          operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
          motions = true, -- adds help for motions
          text_objects = true, -- help for text objects triggered after entering an operator
          windows = true, -- default bindings on <c-w>
          nav = true, -- misc bindings to work with windows
          z = true, -- bindings for folds, spelling and others prefixed with z
          g = true, -- bindings for prefixed with g
        },
      },
    }
    require('which-key').register({
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
      ['<C-\\>'] = { '<cmd>NvimTreeToggle<cr>', 'Explorer' },
      ['<C-S-T>'] = { "<cmd>lua require('nvterm.terminal').toggle('float')<cr>", 'Floating Terminal' },
      ['<C-S-H>'] = { "<cmd>lua require('nvterm.terminal').toggle('horizontal')<cr>", 'Horizontal Terminal' },
      ['<C-S-V>'] = { "<cmd>lua require('nvterm.terminal').toggle('vertical')<cr>", 'Vertical Terminal' },
      ['<C-?>'] = { '<cmd>ChatGPT<cr>', 'ChatGPT' },
    }, { mode = 'n' })
    require('which-key').register({
      ['<leader>'] = { name = 'VISUAL <leader>' },
      ['<leader>h'] = { 'Git [H]unk' },
    }, { mode = 'v' })
  end,
}
