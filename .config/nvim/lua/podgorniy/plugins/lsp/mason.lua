return {
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      -- list of servers for mason to install
      ensure_installed = {
        'html',
        'cssls',
        'lua_ls',
        'emmet_ls', -- snippets for HTML, CSS, Svelte
        'svelte',
        'ty',
      },
    },
    dependencies = {
      {
        'williamboman/mason.nvim',
        opts = {
          -- enable mason and configure icons
          ui = {
            icons = {
              package_installed = '✓',
              package_pending = '➜',
              package_uninstalled = '✗',
            },
          },
        },
      },
      'neovim/nvim-lspconfig',
    },
  },

  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
      ensure_installed = {
        'prettier', -- prettier formatter
        'stylua', -- lua formatter
        'djlint', -- djangohtml, jinja formatter
        'quick-lint-js', -- js linter
        'ruff',
      },
    },
    dependencies = {
      'williamboman/mason.nvim',
    },
  },
}
