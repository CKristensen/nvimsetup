--- METALS SCALA
local api = vim.api
local cmd = vim.cmd
local map = vim.keymap.set
local lsp = vim.lsp

local metals_config = require("metals").bare_config()
-- Example of settings
metals_config.settings = {
  showImplicitArguments = true,
  excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
}
metals_config.init_options.statusBarProvider = "on"
metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()


-- Autocmd that will actually be in charging of starting the whole thing
local nvim_metals_group = api.nvim_create_augroup("nvim-metals", { clear = true })
api.nvim_create_autocmd("FileType", {
  -- NOTE: You may or may not want java included here. You will need it if you
  -- want basic Java support but it may also conflict if you are using
  -- something like nvim-jdtls which also works on a java filetype autocmd.
  pattern = { "scala", "sbt", "java" },
  callback = function()
    require("metals").initialize_or_attach(metals_config)
    -- LSP mappings
    map("n", "gd",  lsp.buf.definition)
    map("n", "K",  lsp.buf.hover)
    map("n", "gi", lsp.buf.implementation)
    map("n", "gr", lsp.buf.references)
    map("n", "gds",lsp.buf.document_symbol)
    map("n", "gws", lsp.buf.workspace_symbol)
    map("n", "<leader>cl", lsp.codelens.run)
    map("n", "<leader>sh", lsp.buf.signature_help)
    map("n", "<leader>rn", lsp.buf.rename)
    map("n", "<leader>f", lsp.buf.format)
    map("n", "<leader>ca", lsp.buf.code_action)
    
    map("n", "<leader>ws", function()
  require("metals").hover_worksheet()
end)
  end,
  group = nvim_metals_group,

})
