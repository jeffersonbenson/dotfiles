" Jeff Benson's NeoVimRC file;
" Hopefully this works out;
call plug#begin('~/.local/share/nvim/plugged')
" Be sure to put Plug commands between #begin and #end
Plug 'vim-scripts/indentpython.vim'

Plug 'romainl/apprentice'

Plug 'dense-analysis/ale'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/nerdcommenter'

Plug 'xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'kien/ctrlp.vim'

Plug 'sheerun/vim-polyglot'

Plug 'elzr/vim-json'

Plug 'jiangmiao/auto-pairs'

Plug 'ryanoasis/vim-devicons'
"This command initializes the plug system
call plug#end()

"Displays line numbers
set number

"Syntax highlighting
syntax enable

"Fixes cursor positon
set virtualedit=onemore

colorscheme delek

"Airline Theme
let g:airline_theme='molokai'

"Set this. Airline will handle the rest. Enables Ale support.
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1

"map NERDTree to Ctrl + O
map <C-o> :NERDTreeToggle<CR>

"NERDTree show hidden files
let NERDTreeShowHidden=0
let g:NERDTreeGitStatusWithFlags = 1

"allow NERDCommenter to work in both normal and in visual(batch) modes
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

"CtrlP Configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"make NERDTree easier to navigate (and any other window for that matter)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

