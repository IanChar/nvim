local iron = require("iron.core")

iron.setup {
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        -- Can be a table or a function that
        -- returns a table (see below)
        command = {"zsh"}
      },
      python = {
        -- command = { "python3" },  -- or { "ipython", "--no-autoindent" }
        command = { "ipython", "--no-autoindent" },
        format = require("iron.fts.common").bracketed_paste_python
      }
    },
    -- How the repl window will be displayed
    -- See below for more information
    repl_open_cmd = "vertical botright 80 split"
  },
  -- Iron doesn't set keymaps by default anymore.
  -- You can set them here or manually add keymaps to the functions in iron.core
  keymaps = {
    send_motion = "<leader>ec",
    visual_send = "<leader>ev",
    send_file = "<leader>ef",
    send_line = "<leader>el",
    send_until_cursor = "<leader>eu",
    send_mark = "<leader>em",
    mark_motion = "<leader>ec",
    mark_visual = "<leader>ec",
    remove_mark = "<leader>ed",
    cr = "<leader>e<cr>",
    interrupt = "<leader>e<leader>",
    -- exit = "<leader>eq",
    clear = "<leader>ez",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = true
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

-- iron also has a list of commands, see :h iron-commands for all available commands
vim.keymap.set('n', '<leader>ws', '<cmd>IronRepl<cr>')
vim.keymap.set('n', '<leader>wr', '<cmd>IronRestart<cr>')
vim.keymap.set('n', '<leader>wf', '<cmd>IronFocus<cr>')
vim.keymap.set('n', '<leader>wh', '<cmd>IronHide<cr>')
