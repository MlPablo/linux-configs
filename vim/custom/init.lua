vim.opt.colorcolumn = "100"
vim.opt.mouse=""
vim.o.mouse=""
vim.wo.relativenumber = true
vim.o.scrolloff = 15
vim.o.omnifunc = "v:lua.vim.lsp.omnifunc"
vim.opt.spelllang = 'en_us'
-- vim.opt.spell = true

local autocmd = vim.api.nvim_exec

autocmd([[
  augroup GoSpellcheck
    autocmd!
    autocmd FileType go setlocal spell
  augroup END
]], false)
-- Center the screen with the cursor in the middle in insert mode
vim.cmd([[
augroup CenterCursor
  autocmd!
  autocmd InsertEnter * norm! zz
augroup END
]])
