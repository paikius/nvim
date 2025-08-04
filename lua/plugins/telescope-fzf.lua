return {
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    cond = function()
      return vim.fn.executable("make") == 1
    end,
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  -- Custom Telescope keymaps
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Telescope find files" },
      { "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Telescope live grep" },
      { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Telescope buffers" },
      { "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Telescope help tags" },
    },
  },
}

