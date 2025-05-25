-- Copilot autosuggestions

local chat = require('CopilotChat')

-- chat.setup({
--     prompts = {
--         Explain = {
--             mapping = '<leader>te',
--             description = 'AI Explain',
--         },
--         Tests = {
--             mapping = '<leader>tu',
--             description = 'AI Tests',
--             prompt = '/COPILOT_GENERATE Please generate unit tests for this code using the pytest framework.',
--         },
--         Fix = {
--             mapping = '<leader>tf',
--             description = 'AI Fix',
--         },
--     },
--   
-- })

vim.keymap.set({ 'n', 'v' }, '<leader>tt', chat.toggle, { desc = 'AI Toggle' })
