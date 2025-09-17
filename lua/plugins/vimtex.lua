return {
  {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    -- tag = "v2.15", -- uncomment to pin to a specific release
    config = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "skim"
    end,
  },
}
