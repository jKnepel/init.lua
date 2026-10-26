return {
    {
        "sainnhe/everforest",
        priority = 1000,
        lazy = false,
        config = function()
            vim.g.everforest_background = "medium"
            vim.g.everforest_transparent_background = 2
            vim.g.everforest_enable_italic = 0
            vim.cmd.colorscheme("everforest")

            for _, group in ipairs({
                "FloatBorder",
                "WinSeparator",
                "VertSplit",
                "StatusLine",
                "StatusLineNC",
            }) do
                vim.api.nvim_set_hl(0, group, { link = "Normal" })
            end
        end,
    },
}
