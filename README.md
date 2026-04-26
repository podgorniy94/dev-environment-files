### Neovim Setup / Tables of Contents :computer:

1. [Notes](#notes-information_source)
2. [Plugins](#plugins-books)
3. [General Notes](#general-notes-information_desk_person)
4. [Options Notes](#options-notes-mag_right)
5. [Lua Notes](#lua-notes-bulb)

### Notes :information_source:

**Dotfiles**

Managed with [GNU Stow](https://www.gnu.org/software/stow/).

### Plugins :books:

**Plugin Manager**
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) - plugin manager

**Dependencies For Other Plugins**
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - Lua helpers used by Telescope, todo-comments and other plugins
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - icons for UI plugins
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim) - UI dependency for noice.nvim
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify) - notification UI used by noice.nvim

**Essentials**
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround) - manipulate surroundings with "ys", "ds", and "cs"
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Navigating Between Neovim Windows and Tmux
- [szw/vim-maximizer](https://github.com/szw/vim-maximizer) - maximize and restore current window
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Show line modifications on left hand side for Git
- [rmagatti/auto-session](https://github.com/rmagatti/auto-session) - Session Manager
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim) - improved `vim.ui.select` and `vim.ui.input`

**Interface**
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - Colorscheme
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status Line
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) - Neovim Greeter
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) - Indentation guides
- [echasnovski/mini.indentscope](https://github.com/echasnovski/mini.indentscope) - active indent guide and indent text objects
- [folke/noice.nvim](https://github.com/folke/noice.nvim) - replaces the UI for messages, cmdline and the popupmenu
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim) - keymap hints

**Fuzzy Finder**
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Dependency for better performance
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder

**Autocompletion**
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion plugin
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - Completion source for text in current buffer
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) - Completion source for file system paths
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) - Completion source for vim's cmdline
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Smart code autocompletion with lsp
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim) - VS Code Like Icons for autocompletion

**Snippets**
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Useful snippets for different languages
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) Completion source for snippet autocomplete

**Comments**
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - toggle comments with "gc"
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) - Requires treesitter
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim) - highlight/search for comments like todo/hack/bug

**Treesitter Syntax Highlighting, Autoclosing & Text Objects**
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - syntax parsing and highlighting
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autoclose brackets, parens, quotes, etc...
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Autoclose tags

**Managing & Installing Language Servers, Linters & Formatters**
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - Mason package manager
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Bridges gap between mason & lspconfig
- [WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) - Auto install linters & formatters on startup

**LSP Configuration**
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Easy way to configure lsp servers
- [folke/lazydev.nvim](https://github.com/folke/lazydev.nvim) - Lua development setup for Neovim config
- [antosha417/nvim-lsp-file-operations](https://github.com/antosha417/nvim-lsp-file-operations) - LSP-aware file operations

**Trouble.nvim**
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim) - nice way to see diagnostics and other stuff

**Formatting & Linting**
- [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim) - Easy way to configure formatters
- [mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint) - Easy way to configure linters

### General Notes :information_desk_person:

[Learn Vim the Smart Way](https://learnvim.irian.to/)  
[Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/)
[Complete Guide](https://youtu.be/6pAG3BHurdM?si=oZEgrxNOrSmDOlxq)

**Commands**

```vim
:help config
:help events
:checkhealth
```

**LSP**  
Neovim has built-in LSP (Language Server Protocol) client.  
Manual, triggered completion is provided by Nvim's builtin `omnifunc`.

**Font**

```bash
# ryanoasis/nerd-fonts
brew tap homebrew/cask-fonts

# jetbrains
brew search font- | grep jetbrains
brew install --cask font-jetbrains-mono-nerd-font

# meslo
brew install font-meslo-lg-nerd-font
```

**Extra information**

**Python:**
- LSP: `ty`  
- Linting: `ruff`  
- Formatting: `ruff`

### Lua Notes :bulb:

**Boolean toggle**

```Lua
-- vimL:
-- set number

vim.opt.number = true
```

**Setting an array of values**

```Lua
-- vimL:
-- set wildignore=*.o,*.a,__pycache__

vim.opt.wildignore = '*.o,*.a,__pycache__'
vim.opt.wildignore = { '*.o', '*.a', '__pycache__' }
```

**Setting a map of values**

```Lua
-- vimL:
-- set listchars=space:_,tab:>~

vim.opt.listchars = { space = '_', tab = '>~' }

--set {option}+={flags}
vim.opt.wildignore = vim.opt.wildignore + { "*.pyc", "node_modules" }`
vim.opt.wildignore:append { "*.pyc", "node_modules" }`

-- set {option}^={flags}
vim.opt.wildignore = vim.opt.wildignore ^ { "new_first_value" }
vim.opt.wildignore:prepend { "new_first_value" }

-- set {option}-={flags}
vim.opt.wildignore = vim.opt.wildignore - { "node_modules" }
vim.opt.wildignore:remove { "node_modules" }
```

> Глобальная переменная 'vim' служит точкой входа для взаимодействия с Neovim API из Lua кода.
> Мета-аксессоры обертывают функции API: `vim.api.nvim_set_option() = vim.opt.{option}`.

### Options Notes :mag_right:

**Performance**

```vim
set lazyredraw
" This setting prevents Vim from redrawing the screen for each iteration of the macro.

set complete-=i
" Limit the files searched for auto-completes.
" i: Scan the current and included files.
```

**Text Rendering Options**

```vim
set display+=lastline
" Vim will try to show as much as possible of the last line in the window (rather than
" a column of '@', which is the default behavior). The line uses `+=` to avoid overriding
" the setting if you have set it to truncate, which will show the “@@@” in the first columns
" instead.

set linebreak
" This will cause wrap to only wrap at the characters in the breakat setting
" (`^I!@*-+;:,./?`), which defaults to space, tab, and small set of punctuation characters.

set nrformats-=octal
" Number formats helps define what kind of format will be considered as number for Vim.
" For instance, the octal option will cause 007 to be incremented to 010 due to using base 8.

set sidescrolloff = 5
" The minimal number of columns to scroll horizontally. Used only when the 'wrap' option
" is off and the cursor is moved off of the screen (help.txt).

set wrap
" By default this will wrap at the first character that won't fit in the window.
" This means it will wrap in the middle of a word if that's where the window boundary lies.

set textwidth = 80
" Re-format text/code to wrap to 80-characters (:h formatting).
```

**User Interface Options**

```vim
set laststatus=2
" If the value of 'laststatus' is 1, then Vim’s status bar will only show if there are 2
" or more Vim windows open.The status bar will always be there by setting the value to 2,
" even if you only open the 1 Vim window.
```

**Miscellaneous Option**

```vim
set backspace
" When indent is included, you can backspace over indentation from autoindent.
" When eol is included, you can backspace over an end of line (eol) character.
" When start is included, you can backspace past the position where you started Insert mode.

set backup
" :help backup-table

set clipboard = unnamed, unnamedplus
" On Mac OS X and Windows, the * and + registers both point to the system clipboard.
" On Linux, you have essentially two clipboards: one is pretty much the same as in the
" other OSes, the other is the 'selection' clipboard (mapped to register * in Vim).

set nomodelines
" Modelines allow you to set variables specific to a file.
" By default, the first and last five lines are read by vim for variable settings.
```
