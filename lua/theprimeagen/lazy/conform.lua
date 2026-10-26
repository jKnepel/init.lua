return {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
        require("conform").setup({
            format_on_save = {
                timeout_ms = 5000,
                lsp_format = "fallback",
            },
            formatters_by_ft = {
                c = { "clang-format" },
                cpp = { "clang-format" },
                lua = { "stylua" },
                go = { "gofmt" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                json = { "prettier" },
                jsonc = { "prettier" },
            },
            formatters = {
                prettier = {
                    prepend_args = { "--tab-width", "4" },
                },
                ["clang-format"] = {
                    -- use the project's .clang-format if there is one, otherwise LLVM with 4-space indents
                    prepend_args = function(_, ctx)
                        local config = vim.fs.find({ ".clang-format", "_clang-format" }, {
                            upward = true,
                            path = ctx.dirname,
                        })[1]
                        if config then
                            return { "-style=file" }
                        end
                        return { "-style={BasedOnStyle: LLVM, IndentWidth: 4}" }
                    end,
                },
            },
        })

        vim.keymap.set("n", "<leader>f", function()
            require("conform").format({ bufnr = 0 })
        end)
    end,
}
