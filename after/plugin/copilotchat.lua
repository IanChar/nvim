-- Copilot autosuggestions
vim.g.copilot_no_tab_map = true
vim.g.copilot_hide_during_completion = 0
vim.g.copilot_proxy_strict_ssl = 0
vim.keymap.set('i', '<Tab>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })

local chat = require('CopilotChat')
local actions = require('CopilotChat.actions')

-- Turn this back on once switch from telescope to fzf
-- local integration = require('CopilotChat.integrations.fzflua')
-- local function pick(pick_actions)
--     return function()
--         integration.pick(pick_actions(), {
--             fzf_tmux_opts = {
--                 ['-d'] = '45%',
--             },
--         })
--     end
-- end

local function qchat()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
        require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
    end
end

chat.setup({
    question_header = '',
    answer_header = '',
    error_header = '',
    allow_insecure = true,
    mappings = {
        reset = {
            normal = '',
            insert = '',
        },
    },
    prompts = {
        Explain = {
            mapping = '<leader>te',
            description = 'AI Explain',
        },
        Review = {
            mapping = '<leader>tr',
            description = 'AI Review',
        },
        Tests = {
            mapping = '<leader>tu',
            description = 'AI Tests',
            prompt = '/COPILOT_GENERATE Please generate unit tests for this code using the pytest framework.',
        },
        Fix = {
            mapping = '<leader>tf',
            description = 'AI Fix',
        },
        Optimize = {
            mapping = '<leader>to',
            description = 'AI Optimize',
        },
        Docs = {
            mapping = '<leader>td',
            description = 'AI Documentation',
        },
        CommitStaged = {
            mapping = '<leader>tc',
            description = 'AI Generate Commit',
        },
    },
    window = {
      layout = 'float',
      relative = 'cursor',
      width = 1,
      height = 0.4,
      row = 1
    }
  
})

vim.keymap.set({ 'n', 'v' }, '<leader>tt', chat.toggle, { desc = 'AI Toggle' })
vim.keymap.set({ 'n', 'v' }, '<leader>tx', chat.reset, { desc = 'AI Reset' })
-- vim.keymap.set({ 'n', 'v' }, '<leader>th', pick(actions.help_actions), { desc = 'AI Help Actions' })
-- vim.keymap.set({ 'n', 'v' }, '<leader>tp', pick(actions.prompt_actions), { desc = 'AI Prompt Actions' })
