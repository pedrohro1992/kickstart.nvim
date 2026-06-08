return {
  "pearofducks/ansible-vim",
  -- Only load the plugin when opening Ansible or YAML files to save startup time
  ft = { "ansible", "yaml", "yaml.ansible" },
  init = function()
    -- Optional configuration variables (tweak to your preference)
    vim.g.ansible_unindent_after_newline = 1
    vim.g.ansible_extra_keywords_highlight = 1
    vim.g.ansible_name_highlight = 'd'
  end,
}

