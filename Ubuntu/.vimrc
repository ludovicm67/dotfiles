syntax on "syntax highlighting
set autoindent
set backspace=indent,eol,start
set expandtab
set hidden
set laststatus=2
set list
set listchars=nbsp:•
set mouse=a
set nostartofline
set number
set ruler
set shiftwidth=4
set showcmd
set softtabstop=4
set wildmenu

" vim-plug
call plug#begin()
Plug 'scrooloose/NerdTree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
call plug#end()

" Theme
set background=dark
set t_Co=256
let base16colorspace=256
colorscheme base16-default-dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" NERDTree configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

" Bindings
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-Down> ddp
nnoremap <C-Up> <Up>ddp<Up>
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

