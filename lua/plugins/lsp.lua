return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      vim.lsp.config("lua_ls", {
        capabilites = capabilites,
        diagnostics = {
          globals = { "vim" },
        },
      })
      vim.lsp.config("pyright", {
        capabilities = capabilities,
      })

      vim.lsp.enable({ "lua_ls" })
      vim.lsp.enable({ "pyright" })
    end,
  },
}
