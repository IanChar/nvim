-- From https://github.com/alexjuda/dotfiles/blob/7b723242faf9a0d8adea78fb5eabc6eb2a2dfddd/config/nvim/lua/aj/lsp/helm.lua
local common = require("custom.lsp.common")

local M = {}


M.setup = function()
    -- Requires installing https://github.com/mrjosh/helm-ls

    require("lspconfig").helm_ls.setup {
        on_attach = common.shared_on_attach,
        cmd = { "helm-ls", "serve", },
    }
end


return M
