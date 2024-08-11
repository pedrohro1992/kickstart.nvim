return {
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        -- globalstatus = true,
        globalstatus = vim.o.laststatus == 2,
        section_separators = '',
        disabled_filetypes = { statusline = { 'dashboard', 'alpha', 'starter' } },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = {},
      },
    },
  },
}
