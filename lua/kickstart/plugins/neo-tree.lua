-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>1', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
    { '<leader>2', ':Neotree document_symbols<CR>', { desc = 'NeoTree symbols' } },
    { '<leader>3', ':Neotree float git_status<CR>', { desc = 'NeoTree git' } },
    { '<leader>=', ':Neotree close<CR>', { desc = 'NeoTree close' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<leader>1'] = 'close_window',
          ['o'] = 'open',
        },
      },
    },
    sources = {
      'filesystem',
      'document_symbols',
      'git_status',
    },
  },
}
