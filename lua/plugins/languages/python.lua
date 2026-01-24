return {
  -- Pyright is handled by lspconfig in lsp.lua
  -- Ruff is handled by conform.nvim in lsp.lua
  -- This file is for specific python tooling if needed, e.g. neotest-python
  {
      "nvim-neotest/neotest",
      optional = true,
      dependencies = {
          "nvim-neotest/neotest-python",
      },
      opts = {
          adapters = {
              ["neotest-python"] = {
                  -- Here you can specify the runner to use, etc.
              },
          },
      },
  },
}
