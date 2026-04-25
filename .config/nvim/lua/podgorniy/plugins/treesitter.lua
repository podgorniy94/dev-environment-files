return {
  -- Tree-sitter parsers and queries for Neovim
  'nvim-treesitter/nvim-treesitter',

  branch = 'main',

  -- New nvim-treesitter main branch should not be lazy-loaded
  lazy = false,

  -- Update installed parsers after plugin update
  build = ':TSUpdate',

  config = function()
    -- Install parsers for the languages/filetypes you use
    require('nvim-treesitter').install({
      'json',
      'javascript',
      'typescript',
      'tsx',
      'yaml',
      'html',
      'css',
      'markdown',
      'markdown_inline',
      'svelte',
      'bash',
      'lua',
      'vim',
      'dockerfile',
      'gitignore',
      'query',
      'vimdoc',
      'c',
      'python',
      'jinja',
    })

    -- Use the bash parser for zsh files
    vim.treesitter.language.register('bash', 'zsh')

    -- Start Tree-sitter highlighting automatically when a parser exists
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end,
}
