return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      -- See Configuration section for options
    },
    keys = {
      { '<leader>zc', '<cmd>CopilotChat<cr>', mode = 'n', desc = 'Open Copilot Chat' },
      { '<leader>ze', '<cmd>CopilotChatExplain<cr>', mode = 'v', desc = 'Explain with Copilot Chat' },
      { '<leader>zr', '<cmd>CopilotChatReview<cr>', mode = 'v', desc = 'Review with Copilot Chat' },
      { '<leader>zf', '<cmd>CopilotChatFix<cr>', mode = 'v', desc = 'Fix with Copilot Chat' },
      { '<leader>zo', '<cmd>CopilotChatOptimize<cr>', mode = 'v', desc = 'Optimize with Copilot Chat' },
      { '<leader>zd', '<cmd>CopilotChatDocs<cr>', mode = 'v', desc = 'Generate Documentation with Copilot Chat' },
      { '<leader>zt', '<cmd>CopilotChatTests<cr>', mode = 'v', desc = 'Generate Tests with Copilot Chat' },
      { '<leader>zm', '<cmd>CopilotChatModels<cr>', mode = 'n', desc = 'Select Copilot Chat Model' },
      { '<leader>za', '<cmd>CopilotChatCommit<cr>', mode = 'n', desc = 'Generate Commit Message with Copilot Chat' },
      { '<leader>zs', '<cmd>CopilotChatCommit<cr>', mode = 'v', desc = 'Generate Commit for Selection' },
    },
  },
}
