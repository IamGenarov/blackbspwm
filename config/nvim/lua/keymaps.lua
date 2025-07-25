-- =============================================================
-- 🎯 Atajos de Teclado - keymaps.lua
-- =============================================================

-- 🧠 Definir líder global y local (debe ir antes de cualquier mapeo)


local map = vim.keymap.set

-- 📁 Árbol de archivos (nvim-tree o neo-tree)
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Abrir árbol de archivos", noremap = true })

-- 💾 Guardar archivo
map("n", "<leader>w", ":w<CR>", { desc = "Guardar archivo", noremap = true })

-- 🚪 Salir de Neovim
map("n", "<leader>q", ":q<CR>", { desc = "Salir de Neovim", noremap = true })

-- 🔢 Incrementar / Decrementar números
map("n", "+", "<C-a>", { desc = "Incrementar número", noremap = true })
map("n", "-", "<C-x>", { desc = "Decrementar número", noremap = true })

-- 📄 Seleccionar todo
map("n", "<C-a>", "gg<S-v>G", { desc = "Seleccionar todo", noremap = true })

-- ↔️ Indentar visual
map("v", "<", "<gv", { desc = "Indentar izquierda", silent = true, noremap = true })
map("v", ">", ">gv", { desc = "Indentar derecha", silent = true, noremap = true })

-- 🗂️ Nueva pestaña
map("n", "te", ":tabedit<CR>", { desc = "Nueva pestaña", noremap = true })

-- 🪟 Dividir ventana
map("n", "<leader>sh", ":split<CR><C-w>w", { desc = "Dividir horizontal", noremap = true })
map("n", "<leader>sv", ":vsplit<CR><C-w>w", { desc = "Dividir vertical", noremap = true })

-- 🧭 Navegación entre paneles
map("n", "<C-k>", "<C-w>k", { desc = "Mover arriba" })
map("n", "<C-j>", "<C-w>j", { desc = "Mover abajo" })
map("n", "<C-h>", "<C-w>h", { desc = "Mover izquierda" })
map("n", "<C-l>", "<C-w>l", { desc = "Mover derecha" })

-- 🔧 Redimensionar ventanas
map("n", "<C-Up>", ":resize -3<CR>", { desc = "Reducir altura" })
map("n", "<C-Down>", ":resize +3<CR>", { desc = "Aumentar altura" })
map("n", "<C-Left>", ":vertical resize -3<CR>", { desc = "Reducir ancho" })
map("n", "<C-Right>", ":vertical resize +3<CR>", { desc = "Aumentar ancho" })

-- 📦 Barbar (tabs/buffers)
map("n", "<Tab>", ":BufferNext<CR>", { desc = "Buffer siguiente", noremap = true })
map("n", "<S-Tab>", ":BufferPrevious<CR>", { desc = "Buffer anterior", noremap = true })
map("n", "<leader>x", ":BufferClose<CR>", { desc = "Cerrar buffer", noremap = true })
map("n", "<A-p>", ":BufferPin<CR>", { desc = "Fijar buffer", noremap = true })

-- ⌨️ jk para salir del modo insert
map("i", "jk", "<ESC>", { desc = "Salir con jk", noremap = true })
