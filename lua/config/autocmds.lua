-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Create an autocommand group to manage our autocmds
vim.api.nvim_create_augroup("AutoSaveOnExitInsert", { clear = true })
-- Set up the autocommand to save files when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  group = "AutoSaveOnExitInsert", -- Assign to our group
  pattern = "*", -- Apply to all file types
  desc = "Save file on exit from insert mode", -- Description for documentation
  command = "write", -- The command to execute (:write)
})
