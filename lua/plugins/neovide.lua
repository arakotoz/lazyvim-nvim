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

-- helper functions

---@param scale_factor number
---@return number
local function clamp_scale_factor(scale_factor)
  return math.max(math.min(scale_factor, vim.g.neovide_max_scale_factor), vim.g.neovide_min_scale_factor)
end

---@param scale_factor number
---@param clamp? boolean
local function set_scale_factor(scale_factor, clamp)
  vim.g.neovide_scale_factor = clamp and clamp_scale_factor(scale_factor) or scale_factor
end

local function reset_scale_factor()
  vim.g.neovide_scale_factor = vim.g.neovide_initial_scale_factor
end

---@param increment number
---@param clamp? boolean
local function change_scale_factor(increment, clamp)
  set_scale_factor(vim.g.neovide_scale_factor + increment, clamp)
end

return {

  -- new keys

  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(vim.g.neovide_increment_scale_factor * vim.v.count1, true)
  end, { desc = "Increase Neovide scale factor" }),

  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(-vim.g.neovide_increment_scale_factor * vim.v.count1, true)
  end, { desc = "Decrease Neovide scale factor" }),

  vim.keymap.set("n", "<C-0>", function()
    reset_scale_factor()
  end, { desc = "Reset Neovide scale factor" }),
}
