V = vim
V.g.mapleader = " "
V.keymap.set("n", "<leader>fv", vim.cmd.Ex)

V.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
V.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

V.keymap.set("n", "J", "mzJ`z")
V.keymap.set("n", "<C-d>", "<C-d>zz")
V.keymap.set("n", "<C-u>", "<C-u>zz")
V.keymap.set("n", "n", "nzzzv")
V.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
V.keymap.set("x", "<leader>p", [["_dP]])
-- next greatest remap ever : asbjornHaland
V.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
V.keymap.set("n", "<leader>Y", [["+Y]])

V.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
V.keymap.set("i", "<C-c>", "<Esc>")

V.keymap.set("n", "Q", "<nop>")
V.keymap.set("n", "<leader>F", V.lsp.buf.format)

V.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
V.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
V.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
V.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

V.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
V.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- moving between splits
V.keymap.set("n", "<C-Down>", "<C-W><C-J>")
V.keymap.set("n", "<C-Up>", "<C-W><C-K>")
V.keymap.set("n", "<C-Right>", "<C-W><C-L>")
V.keymap.set("n", "<C-Left>", "<C-W><C-H>")

-- moving between buffers
V.keymap.set("n", "<A-Right>", "<cmd>bnext<CR>")
V.keymap.set("n", "<A-Left>", "<cmd>bprev<CR>")
V.keymap.set("n", "<A-Down>", "<cmd>bdelete<CR>")

V.keymap.set("i", "<A-Right>", "<cmd>bnext<CR>")
V.keymap.set("i", "<A-Left>", "<cmd>bprev<CR>")

--- :tnoremap <Esc> <C-\><C-n>
V.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true})
