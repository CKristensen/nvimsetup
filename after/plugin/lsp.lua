local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

lsp.preset("recommended")

lsp.ensure_installed({
  'pyright',
  'tsserver',
  'eslint',
  'gopls',
  'yamlls'
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

-- disable completion with tab
-- this helps with copilot setup
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
 mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})


lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end
  map = vim.keymap.set
  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "K", vim.lsp.buf.hover, opts)
  map("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  map("n", "<leader>vd", vim.diagnostic.open_float, opts)
  map("n", "[d", vim.diagnostic.goto_next, opts)
  map("n", "]d", vim.diagnostic.goto_prev, opts)
  map("i", "<C-h>", vim.lsp.buf.signature_help, opts)
  map("n", "gi", lsp.buf.implementation)
  map("n", "gr", lsp.buf.references)
  map("n", "gds",lsp.buf.document_symbol)
  map("n", "gws", lsp.buf.workspace_symbol)
  map("n", "<leader>cl", lsp.codelens.run)
  map("n", "<leader>sh", lsp.buf.signature_help)
  map("n", "<leader>rn", lsp.buf.rename)
  map("n", "<leader>rr", vim.lsp.buf.references, opts)
  map("n", "<leader>f", lsp.buf.format)
  map("n", "<leader>ca", lsp.buf.code_action)
  map("n", "<leader>ws", function() require("metals").hover_worksheet() end)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})


lspconfig.gopls.setup {
    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gowork", "gotmpl"},
    settings = {
        gopls = {
            completeUnimported = true,
        }}}

lspconfig.yamlls.setup{
    cmd = {"yaml-language-server", "--stdio"},
settings = {
            yaml = {
                    format = {
                            enable = true,
                    },
                    hover = true,
                    completion = true,
                    customTags = {
                "!fn",
                "!Fn",
        		"!And",
        		"!If",
        		"!Not",
        		"!Equals",
        		"!Or",
        		"!FindInMap sequence",
        		"!Base64",
        		"!Cidr",
        		"!Ref",
        		"!Ref Scalar",
        		"!Sub",
        		"!GetAtt",
        		"!GetAZs",
        		"!ImportValue",
        		"!Select",
        		"!Split",
        		"!Join sequence"
                    },
            },
    },
}
