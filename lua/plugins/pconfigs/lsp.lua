return {
    {
        "neovim/nvim-lspconfig",
        dependencies = { "hrsh7th/cmp-nvim-lsp" },
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local servers = {
                "ts_ls",
                "html",
                "cssls",
                "pyright",
                "svelte",
                "terraformls",
                "gopls",
                "dockerls",
                "docker_compose_language_service",
                "rust_analyzer",
                "yamlls",
            }

            for _, server in ipairs(servers) do
                vim.lsp.config(server, {
                    capabilities = capabilities,
                })
                vim.lsp.enable(server)
            end

            -- Lua LSP with Neovim-specific settings
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = { version = "LuaJIT" },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            checkThirdParty = false,
                        },
                        diagnostics = {
                            globals = { "vim" },
                        },
                        telemetry = { enable = false },
                    },
                },
            })
            vim.lsp.enable("lua_ls")

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
            vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open diagnostic" })
            vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end, { desc = "Prev diagnostic" })
            vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end, { desc = "Next diagnostic" })
        end,
    },
}
