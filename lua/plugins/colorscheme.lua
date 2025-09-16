-- customise the colorscheme
return {
  -- add gruvbox
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
  },

  -- configure LazyVim to load everforest
  {
    "LazyVim/LazyVim",
    opts = {
      everforest_background = "medium",
      everforest_better_performance = 1,
      colorscheme = "everforest",
    },
  },
}
