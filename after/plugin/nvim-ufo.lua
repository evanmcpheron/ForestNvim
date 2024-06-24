vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set('n', '<C-o>', require('ufo').openAllFolds, { desc = "Open all folds" })
vim.keymap.set('n', '<leader>p', require('ufo').closeAllFolds, { desc = "Close all folds" })
vim.keymap.set('n', '<C-f>', 'za')
vim.keymap.set('n', 'zK', function()
    local winid = require('ufo').peekFoldedLinesUnderCursor()
    if not winid then
        vim.lsp.buf.hover()
    end
end, { desc = "Peek Fold" })

require('ufo').setup({
    provider_selector = function(bufnr, filetype, buftype)
        return { 'indent' }
    end
})
