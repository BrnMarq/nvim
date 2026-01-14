return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require 'nvim-treesitter'.setup {
      highlight = { enable = true },
      indent = { enable = true },
      autotage = { enable = true },
      incremental_section = { enable = true },
      semantic_tokens = { enable = true }
    }
    require 'nvim-treesitter'.install { 'lua', 'javascript', 'tsx', 'typescript', 'python', 'cpp' }
  end,
}
