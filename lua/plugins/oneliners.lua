return {
  { -- This helps with ssh tunneling and copying to clipboard
    'ojroques/vim-oscyank',
  },
  { -- This generates docblocks
    'kkoomen/vim-doge',
    build = ':call doge#install()'
  },
  { -- Git plugin
    'tpope/vim-fugitive',
  },
  { -- Show historical versions of the file locally
    'mbbill/undotree',
  },
  { -- Show CSS Colors
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup({})
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  {
    "NickStafford2/copy-diagnostics.nvim",
  },
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  }
}
