return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2', -- Make sure to use the correct branch name
  requires = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon').setup {} -- Setup Harpoon with default or custom settings
    local harpoon = require 'harpoon'
    -- Key mappings
    vim.keymap.set('n', '<F8>', function()
      harpoon:list():append()
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<A-1>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<A-2>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<A-3>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<A-4>', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<F7>', function()
      harpoon:list():remove()
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)
  end,
}
