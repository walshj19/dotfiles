" remap the command start character to ;
:nmap ; :

" turn on syntax highlighting
syntax on

" turn on line numbering
set number
set relativenumber

" set folding to indentation
set foldmethod=indent

" turn on mouse interactions
set mouse=a

" set max line length before wrap
set textwidth=120

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
