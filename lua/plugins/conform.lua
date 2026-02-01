return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" }, -- Lazy load plugin
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          python = { "ruff_format" }, -- Tries ruff_format first, then black as a fallback
          lua = { "stylua" },
          go = { "gofmt" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },
          css = { "prettier" },
          html = { "prettier" },
          json = { "prettier" },
          yaml = { "prettier" },
          markdown = { "prettier" },
          graphql = { "prettier" },
        },
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*",
        callback = function(args)
          require("conform").format({ bufnr = args.buf })
        end,
      })
    end,
  },
  {
    -- Companion plugin to automatically install formatters via mason.nvim
    "zapling/mason-conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      -- This plugin will automatically scan your conform.nvim settings
      -- and ensure the formatters (like "stylua", "black", "prettier") are installed.
    },
    config = function()
      require("mason-conform").setup()
    end,
  },
}
