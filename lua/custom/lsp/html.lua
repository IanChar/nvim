-- From https://github.com/alexjuda/dotfiles/blob/7b723242faf9a0d8adea78fb5eabc6eb2a2dfddd/config/nvim/lua/aj/lsp/html.lua
local common = require("custom.lsp.common")

local M = {}


M.setup = function()
    -- Language server for html, css, and js.
    -- Requires installing https://github.com/hrsh7th/vscode-langservers-extracted

    require("lspconfig").html.setup {
        on_attach = common.shared_on_attach,
        cmd = { "npx", "vscode-html-language-server", "--stdio", },
    }
end


return M
