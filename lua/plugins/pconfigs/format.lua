return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    python = { "ruff_fix", "ruff_format" },
                    rust = { "rustfmt" },
                    javascript = { "prettier" },
                    typescript = { "prettier" },
                    javascriptreact = { "prettier" },
                    typescriptreact = { "prettier" },
                    svelte = { "prettier" },
                    css = { "prettier" },
                    html = { "prettier" },
                    json = { "prettier" },
                    yaml = { "prettier" },
                },
                format_on_save = {
                    timeout_ms = 3000,
                    lsp_fallback = true,
                },
            })
        end,
    },
    {
        "mfussenegger/nvim-lint",
        event = { "BufWritePost", "BufReadPost" },
        config = function()
            local lint = require("lint")
            lint.linters_by_ft = {
                javascript = { "eslint" },
                typescript = { "eslint" },
                javascriptreact = { "eslint" },
                typescriptreact = { "eslint" },
                svelte = { "eslint" },
                python = { "ruff" },
            }
            vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
                callback = function()
                    lint.try_lint()
                end,
            })
        end,
    },
}
