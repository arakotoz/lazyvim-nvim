if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end
-- padding
vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0
-- scaling
vim.g.neovide_initial_scale_factor = 0.85
vim.g.neovide_min_scale_factor = 0.6
vim.g.neovide_max_scale_factor = 1.8
vim.g.neovide_increment_scale_factor = 0.1
-- re-scaling
vim.g.neovide_scale_factor = 0.85
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-=>", function()
  change_scale_factor(1.0 + vim.g.neovide_increment_scale_factor)
end, { desc = "Increase Neovide scale factor" })
vim.keymap.set("n", "<C-->", function()
  change_scale_factor(1.0 - vim.g.neovide_increment_scale_factor)
end, { desc = "Decrease Neovide scale factor" })
