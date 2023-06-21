require 'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'vscode',
    component_separators = { left = '•', right = '•' },
    section_separators = { left = '', right = '' },
    globalstatus = true,
  },

  sections = {
    lualine_c = {
      {
        'filename',
        show_filename_only = false,
        newfile_status = true,
        path = 1,
      }
    }
  }
}
