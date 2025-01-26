-- From https://github.com/alexjuda/dotfiles/blob/7b723242faf9a0d8adea78fb5eabc6eb2a2dfddd/config/nvim/lua/aj/lsp/json.lua
local common = require("custom.lsp.common")

local M = {}


M.setup = function()
    -- Requires `vscode-langservers-extracted` npm package.

    require("lspconfig").jsonls.setup {
        commands = {
            -- add support for full buffer formatting using range formatting
            Format = {
                function()
                    vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
                end
            },
        },
        on_attach = common.shared_on_attach,
        capabilities = common.make_shared_capabilities(),
    }
end


return M
