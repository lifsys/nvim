-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        config = function ()
            require("harpoon").setup()
        end,
        requires = { {"nvim-lua/plenary.nvim"} }
    },
    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        config = function ()
            require("chatgpt").setup({
                api_key_cmd = "op read op://API/OPEN-AI/Mamba --no-newline",
                loading_text = "loading",
                question_sign = "", -- you can use emoji if you want e.g. 🙂
                answer_sign = "🤖", -- 🤖
                max_line_length = 120,
                yank_register = "+",
                chat_layout = {
                    relative = "editor",
                    position = "50%",
                    size = {
                        height = "80%",
                        width = "80%",
                    },
                },
                settings_window = {
                    border = {
                        style = "rounded",
                        text = {
                            top = " Settings ",
                        },
                    },
                },
                chat_window = {
                    filetype = "chatgpt",
                    border = {
                        highlight = "FloatBorder",
                        style = "rounded",
                        text = {
                            top = " ChatGPT ",
                        },
                    },
                },
                chat_input = {
                    prompt = "  ",
                    border = {
                        highlight = "FloatBorder",
                        style = "rounded",
                        text = {
                            top_align = "center",
                            top = " Prompt ",
                        },
                    },
                },
                openai_params = {
                    model = "gpt-3.5-turbo",
                    frequency_penalty = 0,
                    presence_penalty = 0,
                    max_tokens = 300,
                    temperature = 0,
                    top_p = 1,
                    n = 1,
                },
                openai_edit_params = {
                    model = "code-davinci-edit-001",
                    temperature = 0,
                    top_p = 1,
                    n = 1,
                },
                keymaps = {
                    close = { "<C-c>" },
                    submit = "<C-Enter>",
                    yank_last = "<C-y>",
                    yank_last_code = "<C-k>",
                    scroll_up = "<C-u>",
                    scroll_down = "<C-d>",
                    toggle_settings = "<C-o>",
                    new_session = "<C-n>",
                    cycle_windows = "<Tab>",
                    -- in the Sessions pane
                    select_session = "<Space>",
                    rename_session = "r",
                    delete_session = "d",
                },
            })
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    },
        {
        "nvim-tree/nvim-tree.lua",
        config = function ()
        require("nvim-tree").setup({
            sort = {
            sorter = "case_sensitive",
            },
            view = {
            width = 30,
            },
            renderer = {
            group_empty = true,
            },
            filters = {
            dotfiles = true,
            },
        })
        end,
    },
    { "nvim-tree/nvim-web-devicons" },
}

