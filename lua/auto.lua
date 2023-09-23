vim.cmd [[
  autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
  autocmd BufWritePre * lua vim.lsp.buf.format()
]]