-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },

})
vim.keymap.set("n", "<leader>fv", "<cmd>NvimTreeOpen<CR>")

vim.keymap.set("n", "<leader>tr", function()
  vim.cmd.cd(vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":h"))
  require("nvim-tree.api").tree.open({
    find_file = true,
  })
end, { noremap = true })


vim.keymap.set("n", "<leader>tc", function()
  require("nvim-tree.api").tree.close()
end, { noremap = true })

vim.keymap.set("n", "<leader>to", function()
  require("nvim-tree.api").tree.toggle()
end, { noremap = true })
