return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- This provides the icons
  },
  config = function()
    -- It is highly recommended to disable netrw completely for nvim-tree to work properly
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      renderer = {
        highlight_git = true, -- Highlights the file name based on git status
        icons = {
          show = {
            git = true,
            file = true,
            folder = true,
          },
          glyphs = {
            git = {
              unstaged = "✗", -- Unstaged modified
              staged = "✓", -- Staged
              unmerged = "", -- Conflict/Unmerged (Git merge icon)
              renamed = "➜", -- Renamed
              untracked = "★", -- Untracked/New
              deleted = "", -- Deleted (Trash can or minus)
              ignored = "◌", -- Ignored (Dotted circle)
            },
          },
        },
      },
      git = {
        enable = true,
        ignore = false, -- Set to true if you want the tree to hide .gitignore files
        timeout = 500,
      },
    })
  end,
}
