return {
  -- Tokyo Night color scheme configuration
  {
    -- Plugin specification using folke's Tokyo Night colorscheme
    -- Repository URL: https://github.com/folke/tokyonight.nvim
    "folke/tokyonight.nvim",

    -- Mark plugin for lazy loading (won't load until required)
    lazy = true,

    -- Configuration options for the plugin
    -- 'style = "night"' sets the dark variant of the colorscheme
    opts = { style = "night" },
  },
}
