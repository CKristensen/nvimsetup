vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- moving between splits
vim.keymap.set("n", "<C-Down>", "<C-W><C-J>")
vim.keymap.set("n", "<C-Up>", "<C-W><C-K>")
vim.keymap.set("n", "<C-Right>", "<C-W><C-L>")
vim.keymap.set("n", "<C-Left>", "<C-W><C-H>")

-- moving between buffers
vim.keymap.set("n", "<A-Right>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<A-Left>", "<cmd>bprev<CR>")
vim.keymap.set("n", "<A-Down>", "<cmd>bdelete<CR>")

vim.keymap.set("i", "<A-Right>", "<cmd>bnext<CR>")
vim.keymap.set("i", "<A-Left>", "<cmd>bprev<CR>")

--- :tnoremap <Esc> <C-\><C-n>
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true})
