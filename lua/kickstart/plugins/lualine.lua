-- Bubbles config for lualine with Catppuccin colors
-- https://github.com/nvim-lualine/lualine.nvim

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-web-devicons' },
  config = function()
    -- Catppuccin Mocha colors
    local colors = {
      blue = '#89b4fa',
      cyan = '#94e2d5',
      black = '#1e1e2e',
      white = '#cdd6f4',
      red = '#f38ba8',
      violet = '#cba6f7',
      grey = '#313244',
      green = '#a6e3a1',
      yellow = '#f9e2af',
      pink = '#f5c2e7',
    }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white },
      },
      insert = { a = { fg = colors.black, bg = colors.blue } },
      visual = { a = { fg = colors.black, bg = colors.pink } },
      replace = { a = { fg = colors.black, bg = colors.red } },
      command = { a = { fg = colors.black, bg = colors.yellow } },
      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }

    -- Powerline rounded separators (Nerd Font)
    local left_bubble = '\u{e0b6}'
    local right_bubble = '\u{e0b4}'

    require('lualine').setup {
      options = {
        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = right_bubble, right = left_bubble },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = left_bubble }, right_padding = 2 } },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
          '%=',
          'diff',
          'diagnostics',
        },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = { { 'location', separator = { right = right_bubble }, left_padding = 2 } },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end,
}
