return {
    {
        'nanozuki/tabby.nvim',
        -- event = 'VimEnter', -- if you want lazy load, see below
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            vim.api.nvim_set_keymap("n", "<leader>ta", ":$tabnew<CR>", { noremap = true })
            vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
            vim.api.nvim_set_keymap("n", "<leader>to", ":tabonly<CR>", { noremap = true })
            -- move current tab to previous position
            vim.api.nvim_set_keymap("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
            -- move current tab to next position
            vim.api.nvim_set_keymap("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })
        end,
    },
}
