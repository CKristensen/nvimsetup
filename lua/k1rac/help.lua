function print_carl_help()
    vim.print([[
Shortcuts and Configurations Added in NVim:

- Shortcuts:
  - Leader key: Space

  - Normal Mode Shortcuts:
    - <leader>fv: Open file explorer
    - <leader>p: Paste over selected text (without erasing from clipboard)
    - <leader>y: Yank selected text
    - <leader>d: Delete selected text
    - <leader>Y: Yank to end of line
    - <leader>F: Format code using LSP

  - Visual Mode Select Shortcuts:
    - J: Move selected lines down
    - K: Move selected lines up

  <F2> Refactor: Rename variable under cursor

- Configuration Changes:
  - Colorscheme: Dracula
  - Plugins:
    - Packer.nvim for plugin management
    - Telescope.nvim for fuzzy finding
    - nvim-treesitter for code parsing
    - lsp-zero.nvim for LSP support
    - cmp-nvim for autocompletion
    - LuaSnip and friendly-snippets for snippets
    - poet-v for managing virtual environments
    - lspkind.nvim for LSP UI enhancements

  - Terminal Escape Mapping:
    - <Esc> in terminal mode mapped to <C-\\><C-n>

  - Custom Function:
    - ColorPencils(color): Set colorscheme to 'dracula' or specified color
  
  - Git:
    - <leader>gs: Open Git status using fugitive
  
  - Harpoon:
    - <leader>a: Add the current file to Harpoon's bookmarks
    - <C-e>: Toggle Harpoon's quick menu
  
  - LSP Configurations:
    - Go to definition: gd
    - Hover: K
    - Find workspace symbols: <leader>vws
    - Open diagnostic float: <leader>vd
    - Go to next diagnostic: [d
    - Go to previous diagnostic: ]d
    - Code action: <leader>vca
    - Find references: <leader>vrr
    - Rename: <leader>vrn
    - Signature help: <C-h> (in insert mode)
  
  - Telescope:
    - <leader>ff: Find files
    - <leader>fg: Grep string in files
    - <leader>fu: Find usage of word under cursor
    - <leader>vh: View help tags
    - <C-p>: Find git files
  
  - Treesitter:
    - Auto-installs and highlights various parsers for languages
  
  - Undo Tree:
    - <leader>u: Toggle undo tree
  
  Note: For more details, refer to the corresponding sections in your Lua file.
  ]])
end

vim.api.nvim_set_keymap('n', '<leader>h', ':lua print_carl_help()<CR>', { noremap = true, silent = true })
