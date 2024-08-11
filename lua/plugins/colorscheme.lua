-- return {
-- 	{
-- 		'rebelot/kanagawa.nvim',
-- 		priority = 1000,
-- 		lazy = false,
-- 		config = function()
-- 			require('kanagawa').setup {
-- 				transparent = true,
-- 			}
-- 			require('kanagawa').load()
-- 		end,
-- 	},
-- }
return {
  {
    'catppuccin/nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('catppuccin').setup {
        transparent = true,
        transparent_background = true,
        flavour = 'mocha',
      }
      require('catppuccin').load()
    end,
  },
}
