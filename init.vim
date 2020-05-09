" Jeff Benson's NeoVimRC file;
" Hopefully this works out;
call plug#begin('~/.local/share/nvim/plugged')
" Be sure to put Plug commands between #begin and #end
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-scripts/indentpython.vim'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/nerdcommenter'

Plug 'xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'sheerun/vim-polyglot'

Plug 'elzr/vim-json'

Plug 'jiangmiao/auto-pairs'

Plug 'ryanoasis/vim-devicons'

Plug 'pedrosans/vim-notes'

Plug 'pedrosans/vim-misc'

Plug 'arcticicestudio/nord-vim'
"This command initializes the plug system
call plug#end()

filetype plugin on
set nocompatible
set mouse=a

""CoC config
"set hidden
"set cmdheight=1
"set nobackup
"set nowritebackup
"set updatetime=300
"
"Displays line numbers
set number

"Syntax highlighting
syntax enable

"Fixes cursor positon
set virtualedit=onemore

colorscheme nord

"Tabs as spaces
set expandtab 
set smarttab
set smartindent
set autoindent
set cursorline
set showtabline=2
set noshowmode
set formatoptions-=cro
set clipboard=unnamedplus

"YAML tab indentation
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"Nord Configuration
let g:nord_cursor_line_number_background = 1
set termguicolors
let g:nord_uniform_diff_background = 1
let g:nord_italic_comments = 1

"Set this. Airline will handle the rest. Enables Ale support.
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1

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

"VimNotes configration
let g:notes_directories = ['~/Notes']

"make NERDTree easier to navigate (and any other window for that matter)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"map NERDTree to Ctrl + O
map <C-o> :NERDTreeToggle<CR>

"Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

"TAB in general mode will move to text buffer
"nnoremap <TAB> :bnext<CR>
"SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>"
""CoC Remaping
"inoremap <silent><expr> <c-space> coc#refresh()
"" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"nnoremap <silent> K :call <SID>show_documentation()<CR>
