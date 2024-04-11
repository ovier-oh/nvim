require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
},
  sections = {
    lualine_a = {'branch'},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'mode'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
