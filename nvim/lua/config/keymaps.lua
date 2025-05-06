local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")

-- Buffer
keymap.set("n", "<TAB>", "<CMD>bnext<CR>")
keymap.set("n", "<S-TAB>", "<CMD>bprevious<CR>")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Create splits
keymap.set("n", "th", ":split<CR>")
keymap.set("n", "tv", ":vsplit<CR>")
-- Move to previous buffer
keymap.set("n", "tr", ":bp<CR>")
-- Close splits and others
keymap.set("n", "tt", ":q<CR>")
-- Delete a buffer
keymap.set("n", "td", ":bd<CR>")

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-h>", "<C-w><")
keymap.set("n", "<C-l>", "<C-w>>")
keymap.set("n", "<C-j>", "<C-w>-")
keymap.set("n", "<C-k>", "<C-w>+")

-- Move line
keymap.set("n", "<C-Up>", ":m .+1<CR>==", { desc = "Move line down" })
keymap.set("n", "<C-Down>", ":m .-2<CR>==", { desc = "Move line up" })

-- Move line visual mode
keymap.set(
  "v",
  "<C-Up>",
  ":m '>+1<CR>gv=gv",
  { desc = "Move line down in visual mode" }
)
keymap.set(
  "v",
  "<C-Down>",
  ":m '<-2<CR>gv=gv",
  { desc = "Move line up on visual mode" }
)

-- Search and replace lines
keymap.set(
  "n",
  "ss",
  ":s/\\v",
  { silent = false, desc = "search and replace on line" }
)
keymap.set(
  "n",
  "SS",
  ":%s/\\v",
  { silent = false, desc = "search and replace in file" }
)
keymap.set(
  "v",
  "<leader><C-s>",
  ":s/\\%V",
  { desc = "Search only in visual selection usingb%V atom" }
)
keymap.set(
  "v",
  "<C-r>",
  '"hy:%s/\\v<C-r>h//g<left><left>',
  { silent = false, desc = "change selection" }
)

-- File executable
keymap.set("n", "cx", ":!chmod +x %<cr>", { desc = "make file executable" })

-- JSON file format
keymap.set("n", "<leader>fmt", ":Pretty<CR>")

-- Spelling
keymap.set("n", "<Leader>son", ":setlocal spell spelllang=pt_br<CR>")

-- PATH OPERATIONS --
keymap.set(
  "n",
  "<leader>cpf",
  ':let @+ = expand("%:p")<cr>:lua print("Copied path to: " .. vim.fn.expand("%:p"))<cr>',
  { desc = "Copy current file name and path", silent = false }
)

-- Remap Alt + Down Arrow to copy and paste a line below
-- keymap.set("v", "<C-Down>", "yyjP")

-- Remap multiple cursor selections
-- keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Save
keymap.set("n", "ww", "<CMD>update<CR>")
-- Quit
keymap.set("n", "qq", "<CMD>q<CR>")

-- Markdown Preview
keymap.set("n", "<leader>mp", "<CMD>MarkdownPreview<CR>")
keymap.set("n", "<leader>mps", "<CMD>MarkdownPreviewStop<CR>")

-- VScode shortcut keys session
--
-- Remap Ctrl+z to undo
keymap.set("n", "<C-z>", "u")

-- Remap Ctrl+y to redo
keymap.set("n", "<C-y>", "<C-r>")

-- Remap to active visual block mode
keymap.set("n", "<leader>vb", "<C-v>")

-- Remap Alt + Up Arrow to move the current line up
-- keymap.set("n", "<A-Up>", ":m-2<CR>==")

-- Remap Alt + Down Arrow to move the current line down
-- keymap.set("n", "<A-Down>", ":m+<CR>==")

-- Remap Ctrl + ; to toggle commenting
-- keymap.set("n", "<leader>;", "gcc")
keymap.set("v", "<leader>;", "gcc")

-- down = j, up = k to down = k, up = j
-- keymap.set("n", "k", "j")
-- keymap.set("n", "j", "k")

-- down = j, up = k to down = k, up = j
-- keymap.set("v", "k", "j")
-- keymap.set("v", "j", "k")

-- keymap.set("n", "P", ":!npx prettier % --write<CR>")
-- keymap.set("n", "L", ":!npx eslint % --fix<CR>")

-- IncRename
keymap.set("n", "<leader>rn", ":IncRename ")

-- MiniMap
keymap.set("n", "<leader>mo", "<CMD>Neominimap on<CR>")
keymap.set("n", "<leader>mc", "<CMD>Neominimap off<CR>")
keymap.set("n", "<leader>mt", "<CMD>Neominimap refresh<CR>")

-- DB View
keymap.set("n", "<leader>db", "<CMD>DBUIToggle<CR>")

-- TERMINAL
-- Sair do terminal com Ctrl+Q mesmo no modo insert
vim.keymap.set(
  "t",
  "<Esc><Esc>",
  "<C-\\><C-n>",
  { desc = "Sair do modo terminal" }
)

-- Navegar para outras janelas a partir do terminal
vim.keymap.set(
  "t",
  "<C-h>",
  "<Cmd>wincmd h<CR>",
  { desc = "Mover para janela esquerda" }
)
vim.keymap.set(
  "t",
  "<C-j>",
  "<Cmd>wincmd j<CR>",
  { desc = "Mover para janela abaixo" }
)
vim.keymap.set(
  "t",
  "<C-k>",
  "<Cmd>wincmd k<CR>",
  { desc = "Mover para janela acima" }
)
vim.keymap.set(
  "t",
  "<C-l>",
  "<Cmd>wincmd l<CR>",
  { desc = "Mover para janela direita" }
)

-- Diagnostics
keymap.set("n", "<leader><C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
