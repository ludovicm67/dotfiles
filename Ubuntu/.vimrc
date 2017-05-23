filetype plugin on
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
set omnifunc=syntaxcomplete#Complete
set ruler
set shiftwidth=4
set showcmd
set softtabstop=4
set title
set wildmenu

" vim-plug
call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/NerdTree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
Plug 'kien/ctrlp.vim'
Plug 'posva/vim-vue'
Plug 'editorconfig/editorconfig-vim'
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
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'


" Other configurations
let g:ale_c_clang_options = '-std=c99 -Wall -Wextra -Werror -pedantic'
let g:ale_c_gcc_options = '-std=c99 -Wall -Wextra -Werror -pedantic'
let g:user_emmet_expandabbr_key = '<F2>'
let g:user_emmet_leader_key='<F2>'
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:deoplete#enable_at_startup = 1

" Bindings
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-Down> ddp
nnoremap <C-Up> <Up>ddp<Up>
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv
nnoremap <F9> :source ~/.vimrc<CR>
nnoremap <F10> :PlugInstall<CR>
vnoremap <C-s> <esc>:w<CR>gv
inoremap <C-s> <esc>:w<CR>i
noremap <C-s> :w<CR>

map <F8> :w <CR> :!gcc % -o %< && ./%< <CR>
