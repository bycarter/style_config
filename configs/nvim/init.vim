set title  " show the file title
set number  " shows line numbers
set splitbelow splitright  " screens splits below and to the right
set expandtab  " transforms tabs into spaces
set shiftwidth=2  " number of spaces for indentation
set tabstop=2  " number of spaces for tabs
set mouse=a  " allows the use of the mouse in the editor
set cc=80  "
" add automatic syntax support for open files
filetype plugin indent on
syntax on
" enable 256 colors on terminal
set t_Co=256
" True color if available
let term_program=$TERM_PROGRAM
" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif

call plug#begin()
  " Appearance
  Plug 'ryanoasis/vim-devicons'
  
  " Utilities
  Plug 'preservim/nerdtree'
  Plug 'sheerun/vim-polyglot'
  Plug 'gabrielelana/vim-markdown'
  
  " Git integration
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'tpope/vim-fugitive'
  
  " Auto pairs and surround
  Plug 'windwp/nvim-autopairs'
  Plug 'tpope/vim-surround'
  
  " Colorscheme
  Plug 'elvessousa/sobrio'
call plug#end()

" Set colorscheme
colorscheme sobrio

" NERDTree Configuration
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automatically close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Terminal Configuration
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
