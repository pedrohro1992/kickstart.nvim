return {
  'nvimtools/none-ls.nvim',
  dependecies = {},
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        -- formating
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.terraform_fmt,
        -- code_actions
        null_ls.builtins.code_actions.gomodifytags,
        null_ls.builtins.code_actions.impl,
        -- diagnostics
        null_ls.builtins.diagnostics.kube_linter,
      },
    }
  end,
}
