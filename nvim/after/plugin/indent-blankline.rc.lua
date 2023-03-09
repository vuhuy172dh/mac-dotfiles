local status, ib = pcall(require, 'indent_blankline')
if (not status) then return end

ib.setup {
  show_current_context = true,
  show_current_context_start = true
}

vim.cmd [[highlight IndentBlanklineChar guifg=#2c323c]]
vim.cmd [[highlight IndentBlanklineContextChar guifg=#945ca4]]
