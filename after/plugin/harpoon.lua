--- harpoon config
V = vim
V.keymap.set("n", "<leader>a", require("harpoon.mark").add_file)
V.keymap.set("n", "<C-e>", require("harpoon.ui").toggle_quick_menu)
