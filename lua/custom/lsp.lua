-- From https://github.com/alexjuda/dotfiles/blob/7b723242faf9a0d8adea78fb5eabc6eb2a2dfddd/config/nvim/lua/aj/lsp.lua

local M = {}


local setup_all_lang_servers = function()
    require("custom.lsp.helm").setup()
    require("custom.lsp.html").setup()
    require("custom.lsp.json").setup()
    -- require("custom.lsp.lua").setup()
    require("custom.lsp.markdown").setup()
    require("custom.lsp.python").setup()
    require("custom.lsp.yaml").setup()
end


M.setup = function()
    setup_all_lang_servers()
end


return M
