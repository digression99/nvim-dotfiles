-- Moves the code around with visual mode.
-- If the line is at the end of the file, it spits an error.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Save the cursor position when merging lines with "J".
vim.keymap.set("n", "J", "mzJ`z")

-- Saves the cursor position when jumping by page.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Saves the cursor position when searching.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- This is conflicting with <leader>pv. find another one.
--vim.keymap.set("x", "<leader>p", "\"_dP")

-- Separate the system clipboard from vim's clipboard.
-- Use <leader>y to use system clipboard.
-- use plus register.
-- vim.keymap.set("n", "<leader>y", "\"+y")
-- vim.keymap.set("v", "<leader>y", "\"+y")
-- vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Delete to the void register, so
-- deleting something doesn't contaminate the register.
-- vim.keymap.set("n", "<leader>d", "\"_d")
-- vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Windows only
vim.keymap.set("n", "<leader>bv", "<C-v>")
-- Why escape with <C-c>?
-- You can do it with <C-[> also.
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- Capital Q for no operation. Why?
vim.keymap.set("n", "Q", "<nop>")

-- <C-f> for project-wise jump.
-- Somehow not working...
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format the buffer.
vim.keymap.set("n", "<leader>f", function()
  print("Formatting...")
  vim.lsp.buf.format()
end)

-- quickfix list related.
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Change all the appearances of the word the current cursor is at.
-- I believe renaming the variable name can be better executed in lsp.
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Change the current bash file to be executable.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
