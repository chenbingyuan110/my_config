let mapleader=" "
syntax on
set number
set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
" set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


noremap j h
noremap i k
noremap k j
noremap h i
noremap H I

noremap J 5h
noremap K 5j
noremap I 5k
noremap L 5l

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

inoremap <C-j> <esc>
map <C-j> <esc>
map S :wa<CR>

map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j
map <LEADER>l <C-w>l
map <LEADER>q <C-w>q

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map ti :tabnew<CR>
map tl :tabnext<CR>
map tj :tabprev<CR>
map tk :tabclose<CR>

map <LEADER>fd /\(\w\+\>\)\_s*\1
map <LEADER>sc :set spell!<CR>
inoremap <C-x> <Esc>ea<C-x>s
map tx :r !figlet 


" For Markdown
autocmd FileType markdown nnoremap <LEADER>` F a`<Esc>f i`<Esc>
autocmd FileType markdown nnoremap ` ea`<Esc>bi`<Esc>
autocmd FileType markdown inoremap kkn {% note %}{% endnote %}<Esc>F{i<CR><CR><Up>


""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug List
""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'


" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Web development
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'turbio/bracey.vim'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" NERD Commenter
Plug 'preservim/nerdcommenter'

call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""
" Theme
"""""""""""""""""""""""""
let g:lightline = { 'colorscheme': 'snazzy' }
let g:SnazzyTransparent = 1
colorscheme snazzy


"""""""""""""""""""""""""
"  You Complete ME
"""""""""""""""""""""""""
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_auto_trigger = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_use_clangd = 0
let g:ycm_filetype_blacklist={'notes': 1, 'markdown': 1, 'unite': 1, 'tagbar': 1, 'pandoc': 1, 'qf': 1, 'vimwiki': 1, 'text': 1, 'infolog': 1, 'mail': 1}
if system('uname') == "Darwin"
    let g:ycm_python_interpreter_path = "/usr/local/bin/python3"
    let g:ycm_python_binary_path = "/usr/local/bin/python3"
elseif system('uname') == "Linux"
    let g:ycm_python_interpreter_path = "/bin/python3"
    let g:ycm_python_binary_path = "/bin/python3"
endif


"""""""""""""""""""""""""
" Python-syntax
"""""""""""""""""""""""""
let g:python_highlight_all = 1
let g:python_slow_sync = 0


"""""""""""""""""""""""""
" Markdown Preview
"""""""""""""""""""""""""
let g:mkdp_auto_start = 1


"""""""""""""""""""""""""
" Vim-markdown
"""""""""""""""""""""""""
let g:vim_markdown_new_list_item_indent = 0


"""""""""""""""""""""""""
" emmet-vim
"""""""""""""""""""""""""
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-K>'


"""""""""""""""""""""""""
" bracey
"""""""""""""""""""""""""
let g:bracey_browser_command = "open -a 'Google Chrome' http://localhost:12123"
let g:bracey_server_port = 12123
let g:bracey_refresh_on_save = 1



"""""""""""""""""""""""""
" nerdtree
"""""""""""""""""""""""""
autocmd vimenter * NERDTree | wincmd l
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map tt :NERDTreeToggle<CR>
let g:NERDTreeWinSize=25
let NERDTreeMapUpdir = "J"
let NERDTreeMapOpenSplit = ""
let NERDTreeMapOpenVSplit = "o"
let NERDTreeMapActivateNode = "l"
let NERDTreeMapOpenInTab = "t"
let NERDTreeMapOpenTabSilent = "T"
let NERDTreeMapCloseDir = "j"
let NERDTreeMapChangeRoot = "L"
let NERDTreeMapToggleHidden = "H"
let NERDTreeMapJumpFirstChild = "I"
let NERDTreeMapJumpLastChild = "K"


"""""""""""""""""""""""""
" nerdtree git plugin
"""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"""""""""""""""""""""""""
" auto pairs
"""""""""""""""""""""""""
let g:AutoPairsMapCh = 0
let g:AutoPairsFlyMode = 0

"""""""""""""""""""""""""
" NERD Commenter
"""""""""""""""""""""""""
let g:NERDSpaceDelims = 1
