return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'antoinemadec/FixCursorHold.nvim',
    'fredrikaverpil/neotest-golang',
  },
  keys = {
    {
      '<leader>tt',
      function()
        require('neotest').run.run()
      end,
      desc = 'Run Test',
    },
    {
      '<leader>tf',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      desc = 'Run Test File',
    },
    {
      '<leader>tp',
      function()
        require('neotest').output_panel.toggle()
      end,
      desc = 'Toggle Test Output Panel',
    },
    {
      '<leader>tl',
      function()
        require('neotest').run.run_last()
      end,
      desc = 'Run Last Test',
    },
    {
      '<leader>ts',
      function()
        require('neotest').summary.toggle()
      end,
      desc = 'Toggle Test Summary',
    },
  },
  config = function()
    require('neotest').setup {
      floating = {
        border = 'rounded',
        max_height = 0.75,
        max_width = 0.9,
        options = {},
      },
      adapters = {
        require 'neotest-golang' {
          { dap_go_enabled = true },
        },
      },
    }
  end,
}
