return {
  {
    "navarasu/onedark.nvim",
    config = function()
      vim.cmd.colorscheme "onedark"
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    opts = {
      theme = "onedark"
    }
  }
}
