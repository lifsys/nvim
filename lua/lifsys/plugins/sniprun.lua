return { -- only for lunarvim

  {
    'michaelb/sniprun',
    branch = 'master',

    build = 'sh install.sh',
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require('sniprun').setup {
        interpreter_options = {
          Python3_fifo = {
            interpreter = 'python3.11 ',
          },
        },
      }
    end,
  },
} -- only for lunar vim
