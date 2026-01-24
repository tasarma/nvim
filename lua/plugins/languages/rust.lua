return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- Recommended
    ft = { "rust" },
    config = function()
      vim.g.rustaceanvim = {
        -- Plugin configuration
        tools = {
        },
        -- LSP configuration
        server = {
          on_attach = function(client, bufnr)
            -- Register keybindings here
             vim.keymap.set("n", "K", "<cmd>RustLsp hover actions<cr>", { buffer = bufnr, desc = "Hover Actions" })
          end,
          default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
            },
          },
        },
        -- DAP configuration
        dap = {
        },
      }
    end
  },
}
