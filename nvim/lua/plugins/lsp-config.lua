return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "tsserver",
                    "html",
                    "cssls",
                    "emmet_ls",
                },
                automatic_installation = true,
            })
            require("mason-lspconfig").setup_handlers {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end
            }
        end
      },
      {
        "neovim/nvim-lspconfig",
        dependencies = {
            { 'j-hui/fidget.nvim', opts = {} },
            { "folke/neodev.nvim", opts = {} },
        },
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")
            
            vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
            vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

            --   ALLOWS THESE TO BE ON BUFFERS WITH LSP, BUT WHEN NO LSP ON BUFFER WIILL DO VIMS BEST
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                  -- Enable completion triggered by <c-x><c-o>
                  vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
              
                  -- Buffer local mappings.
                  -- See `:help vim.lsp.*` for documentation on any of the below functions
                  local opts = { buffer = ev.buf }
                  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                  vim.keymap.set('n', 'gd', "<cmd>Telescope lsp_definitions<CR>", opts)
                  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                  vim.keymap.set('n', 'gi',"<cmd>Telescope lsp_implementations<CR>", opts)
                  vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
                  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
                  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
                  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
                  vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
                  vim.keymap.set('n', 'gr', "<cmd>Telecope lsp_references<CR>", opts)
                  vim.keymap.set('n', '<leader>fo', function()
                    vim.lsp.buf.format { async = true }
                  end, opts)
                  vim.keymap.set('n', "<leader>rs", ":LspRestart<CR>", opts)
                end,
              })
        end
      }
}