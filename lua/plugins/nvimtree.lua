return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 30,
          side = "left",
        },
        filters = {
          dotfiles = false,
        },
        git = {
          enable = true,
        },
      })

      -- optional: keybinding to toggle the tree
      vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
    end,
  },
}
