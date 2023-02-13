require "plugins"

vim.opt.swapfile = false
vim.opt.showcmd = true
vim.opt.number = true
vim.opt.ambiwidth = "single"
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.laststatus = 2
vim.opt.backspace = "indent,eol,start"
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true
vim.opt.hlsearch = true
vim.opt.clipboard = "unnamedplus"

vim.cmd [[
if executable('fcitx5')
  let g:fcitx_state = 1
  augroup fcitx_savestate
    autocmd!
    autocmd InsertLeave * let g:fcitx_state = str2nr(system('fcitx5-remote'))
    autocmd InsertLeave * call system('fcitx5-remote -c')
    autocmd InsertEnter * call system(g:fcitx_state == 1 ? 'fcitx5-remote -c': 'fcitx5-remote -o')
  augroup END
endif
]]

vim.keymap.set("i", "<c-h>", "<left>")
vim.keymap.set("i", "<c-j>", "<down>")
vim.keymap.set("i", "<c-k>", "<up>")
vim.keymap.set("i", "<c-l>", "<right>")
vim.keymap.set("n", "<c-z>", "u")
vim.keymap.set("n", "<c-s-z>", "<C-r>")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "<ESC><ESC>", ":nohlsearch<ESC>")
vim.keymap.set("v", "j", "gj")
vim.keymap.set("v", "k", "gk")
vim.keymap.set("v", "p", "\"_dP")
vim.keymap.set("v", "P", "\"_dp")

