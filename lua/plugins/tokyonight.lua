return {
  "folke/tokyonight.nvim",
  lazy = false, -- load immediately
  priority = 1000, -- load before other UI plugins
  opts = {
    style = "moon", -- or "storm", "night", "day"
    transparent = false,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      functions = {},
      variables = {},
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}

