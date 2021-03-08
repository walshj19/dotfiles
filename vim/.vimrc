" remap the command start character to ;
:nmap ; :

" turn on syntax highlighting
syntax on

" turn on line numbering
set number
set relativenumber

" turn on mouse interactions
set mouse=a

" set max line length before wrap
set textwidth=120

" start NERDtree on vim startup
autocmd vimenter * NERDTree

let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
