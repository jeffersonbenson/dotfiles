" Jeff Benson's NeoVimRC file;
" Hopefully this works out;
call plug#begin('~/.local/share/nvim/plugged')
" Be sure to put Plug commands between #begin and #end
Plug 'vim-scripts/indentpython.vim'

Plug 'romainl/apprentice'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'kien/ctrlp.vim'

Plug 'sheerun/vim-polyglot'
"This command initializes the plug system
call plug#end()

"Displays line numbers
set number

"Syntax highlighting
syntax enable

"Monokai color theme
colorscheme apprentice

"Airline Theme
let g:airline_theme='minimalist'

"map NERDTree to Ctrl + O
map <C-o> :NERDTreeToggle<CR>

"make NERDTree easier to navigate (and any other window for that matter)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

