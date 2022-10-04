syntax on

set nu
set relativenumber
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
"set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=$HOME/.local/state/nvim/undodir
set undofile
set incsearch
set nohlsearch
"set signcolumn=yes

call plug#begin('~/.vim/plugged')
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

"Recomplile suckless(dwm/st) programs automatically whenever its updated 
	autocmd BufWritePost config.h,config.def.h !sudo make clean install

lua << END
require('lualine').setup{
  options = {
    icons_enabled = true,
    theme = 'powerline_dark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {}
    }
    }
}
END
