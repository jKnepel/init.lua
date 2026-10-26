return {
    "rmagatti/auto-session",
    lazy = false,
    opts = {
        auto_save = true,
        auto_restore = true,
        close_filetypes_on_save = { "checkhealth", "netrw" },
        pre_save = {
            function()
                vim.fn.system({ "git", "-C", vim.fn.getcwd(), "rev-parse", "--show-toplevel" })
                return vim.v.shell_error == 0
            end,
        },
    },
}
