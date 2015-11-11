set nocompatible
execute pathogen#infect()

"airline settings
let g:airline_theme='murmur'
let g:airline_powerline_fonts=1

"easytags config
set tags=./tags;,tags;
let g:easytags_include_members=1
let g:easytags_dynamic_files=1

"Make sure airline is visible
set laststatus=2

"NERDTree settings
let g:NERDTreeDirArrows=1

"Make sure .tex files load as latex!
let g:tex_flavor='latex'

"colour theming
colors zenburn
colorscheme zenburn

"spelling preferences
set spell spelllang=en_gb

let &encoding='utf-8'
let &fileencoding='utf-8'
let &termencoding='utf-8'

syntax enable
filetype plugin indent on

set autoindent
set backspace=indent,eol,start

"enable 256 ansi colours in ConEmu
if !has("gui_running")
    set term=xterm
    set mouse=a

    set t_Co=256

    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"

    let &t_ti="\e[1 q"
    let &t_SI="\e[5 q"
    let &t_EI="\e[1 q"
    let &t_te="\e[0 q"
else
    set guioptions=
    if has('gui_win32')
        set guifont=Consolas:h9:cANSI
    endif
endif

"Auto-update vimrc
augroup VimReload
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

"preferences
set nocursorline
set noshowmode
set smarttab
set number
set wildmenu
set noerrorbells
set visualbell
set nowrap
set shiftwidth=4
set tabstop=4
set expandtab
set infercase
set scrolloff=2
set timeoutlen=0

"enable undo files
set undodir=$HOME/.tmp/
set undofile

"Show when a line is getting toooo long
highlight ColorColumn ctermbg=red ctermfg=blue guibg=#151515
call matchadd('ColorColumn', '\%101v', 100)

"custom mappings
noremap <silent> <F5> :NERDTreeToggle<CR>
noremap <silent> <F4> :set spell!<CR>
noremap <silent> <F9> :e $MYVIMRC<CR>

noremap <silent> <F11> :%s/\e\[\d*m\s\?/ /g<CR>:%s/ \+/ /g<CR>:%s/^ //<CR>:FixWhitespace<CR>

"map space to jump down in normal mode
nnoremap <silent> <Space> <PageDown>

"map up/down arrows to page up/down
nnoremap <silent> <UP>   <PageUp>
nnoremap <silent> <DOWN> <PageDown>
vnoremap <silent> <UP>   <PageUp>
vnoremap <silent> <DOWN> <PageDown>
