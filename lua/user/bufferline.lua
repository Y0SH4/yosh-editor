local colors = {
  bg        = '#1d1f21',
  red       = '#fb3d66',
  green     = '#6d8c63',
  yellow    = '#e4cd7',
  orange    = '#bf946b',
  blue      = '#8b9eb2',
  violet    = '#cdafd9',
  magenta   = '#796e7f',
  darkblue  = '#55648',
  cyan      = '#7b8e93',
  bg_light  = "#323b3e",
  bg_alt    = "#202325",
  bg_red    = '#182332',
  fg        = '#f7f8f8',
  clear     = 'None',
}

require("bufferline").setup{
  options = {
    modified_icon = "●",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 18,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = true,
    separator_style = "slant"
  },

  highlights = {
    background = {
      guifg = comment_fg,
      guibg = colors.bg_alt
    },
    fill = {
      guifg = comment_fg,
      guibg = colors.bg
    },
    tab = {
      guifg = colors.bg,
      guibg = 'None'
    },
    tab_selected = {
      guifg = colors.bg,
      guibg = 'None'
    },
    buffer_selected = {
      guifg = normal_fg,
      guibg = colors.bg_light,
      gui = "bold"
    },
    buffer_visible = {
      guifg = colors.color6,
      guibg = colors.bg_alt
    },
    separator_visible = {
      guifg = colors.bg, 
      guibg = colors.bg_alt
    },
    separator_selected = {
      guifg = colors.bg, 
      guibg = colors.bg_light
    },
    separator = {
      guifg = colors.bg, 
      guibg = colors.bg
    },
    indicator_selected = {
      guifg = colors.bg, 
      guibg = colors.bg
    },
    modified_selected = {
      guifg = string_fg,
      guibg = colors.bg_light
    }
  }
}
