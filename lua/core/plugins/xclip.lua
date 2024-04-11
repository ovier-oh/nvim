-- Configuración para utilizar xclip como soporte de portapapeles en Neovim
vim.cmd([[set clipboard+=unnamedplus]])

-- Definir funciones para copiar y pegar utilizando xclip
function ClipboardCopy()
    -- Copia el contenido del registro `"` (última yank o borrado) al portapapeles utilizando xclip
    vim.fn.system("echo -n '" .. vim.fn.getreg("\"") .. "' | xclip -selection clipboard")
end

function ClipboardPaste()
    -- Pega el contenido del portapapeles en el cursor
    vim.fn.setreg("\"", vim.fn.system("xclip -o -selection clipboard"))
    vim.cmd("normal! p")
end

-- Mapeos de teclado para las funciones de copiar y pegar
vim.api.nvim_set_keymap("v", "<C-c>", "<Esc>:lua ClipboardCopy()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-v>", ":lua ClipboardPaste()<CR>", { noremap = true, silent = true })
