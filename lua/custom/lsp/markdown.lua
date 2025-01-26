-- From https://github.com/alexjuda/dotfiles/blob/7b723242faf9a0d8adea78fb5eabc6eb2a2dfddd/config/nvim/lua/aj/lsp/markdown.lua
local common = require("custom.lsp.common")

local M = {}


M.setup = function()
    -- Language server for Sphinx and rst.
    -- Requires `marksman` installed. Get it from
    -- https://github.com/artempyanykh/marksman/releases.

    require("lspconfig").marksman.setup {
        on_attach = common.shared_on_attach,
        capabilities = common.make_shared_capabilities(),
    }
end


return M
