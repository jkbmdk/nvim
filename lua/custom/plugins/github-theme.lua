return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup {
      options = {
        terminal_colors = true,
        transparent = true,
        styles = {
          comments = 'italic',
          keywords = 'bold',
        },
      },
      palettes = {
        github_dark = {
          bg0 = '#0d1117',
          bg1 = '#21262d',
          bg3 = '#161b22',
        },
      },
    }

    vim.cmd 'colorscheme github_dark'
  end,
}
