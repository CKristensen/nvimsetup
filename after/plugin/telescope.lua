local builtin = require('telescope.builtin')
V = vim
V.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- find directory
V.keymap.set('n', '<C-p>', builtin.git_files, {})
V.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({ search = V.fn.input("Grep > ") })
end)
V.keymap.set('n', '<leader>vh', builtin.help_tags, {})
-- find usage of word under cursor
V.keymap.set('n', '<leader>fu', builtin.lsp_references, {})
