" PLUGINS
call plug#begin('~/.vim/plugged')

" Functionality
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
Plug 'mhinz/vim-startify'

" Visual
Plug 'tomasiser/vim-code-dark'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'

" Nice to haves
Plug 'raimondi/delimitmate'
Plug 'preservim/nerdcommenter'

call plug#end()


" LIGHTLINE SETTINGS
let g:lightline = {'colorscheme' : 'codedark'}
set laststatus=2 


" EDITOR SETTINGS
set backspace=2 " Allow backspacing for everything in insert mode
set number " Enable line numbers

set expandtab " Insert spaces when pressing tab
set tabstop=4 " Insert n spaces when pressing tab
set shiftwidth=4 " Number of spaces for indentation

set autoindent " Automatically indent
set smartindent

set incsearch " To incrementally highlight when searching
set nocompatible " Turn of vi compatibility

set splitbelow " Sets new splits to occur below
filetype plugin on " Run autocommands for plugins when a filetype is recognized


" MAPPINGS
nnoremap <leader>b :ls<cr>:b<space>
nnoremap <C-t> :NERDTreeToggle<CR>
" Turn on zen mode
nnoremap <leader>z :Goyo<cr>
" Open vimrc
nnoremap <leader>v :e ~/.vimrc<cr>
" Reload vimrc
nnoremap <leader>r :source ~/.vimrc<cr>


" VISUAL SETTINGS
syntax on
set background=dark
colorscheme codedark

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set nowrap " Disable word wrap
set nuw=6 " Increase line number width


" WINDOWS SPECIFIC SETTINGS
if has("win32")
    set t_ut=""
endif
