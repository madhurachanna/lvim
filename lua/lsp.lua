-- require("lvim.lsp.manager").setup("tsserver", {})
lvim.lsp.buffer_mappings.normal_mode['K'] = nil
lvim.lsp.buffer_mappings.normal_mode['gk'] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show hover" }
lvim.lsp.automatic_servers_installation = false
-- vim.list_extend(lvim.lsp.override, { "volar", "eslint", "eslintrc" })
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "volar", "eslint", "eslintrc" })


-- setup formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "black" }, }
-- lvim.format_on_save = true
-- lvim.format_on_save.pattern = { "*.py" }

-- setup linting
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", filetypes = { "python" } } }

-- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--   }
-- }

-- vim.opt.tabstop = 2
-- vim.opt.shiftwidth = 2
-- require("lvim.lsp.manager").setup("vuels", {})
-- require("lvim.lsp.manager").setup("emmet_ls", {
--   filetypes = { 'html', 'css', 'typescriptreact', 'javascriptreact', 'javascript' }
-- })
-- require("lvim.lsp.manager").setup("tailwindcss", {})
