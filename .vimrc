set smartindent
syntax on
set cursorline
set fileencodings=utf-8,cp1251,koi8-r,cp866
set visualbell
let mapleader = ","
set nocompatible

noremap <Leader>E :qa!<CR>
set t_Co=256

set number

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set nobackup
set nowritebackup
set noswapfile

"Vertical Split : Ctrl+w + v
"Horizontal Split: Ctrl+w + s
"Close current windows: Ctrl+w + q
let g:pep8_map='<leader>8'

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here

map ,vv :vsp $MYVIMRC " открыть файл конфигурации .vimrc
map ,V :call ReloadRc() " перезапустить файлы конфигурации

Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'

if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold    
endif
colorscheme wombat
map <F12> :NERDTree<cr>
map <F9> :!python % <cr>

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" snipmate install
Bundle "MarcWeber/vim-addon-mw-utils"
  Bundle "tomtom/tlib_vim"
  Bundle "garbas/vim-snipmate"

  " Optional:
  Bundle "honza/vim-snippets"
