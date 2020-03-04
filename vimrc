execute pathogen#infect()
set runtimepath+=/usr/local/go/misc/vim
set shell=zsh\ --login
set nolist
set number
set hidden
set nowrap

" Colors
let g:neodark#use_256color = 1
syntax on
colorscheme neodark
set background=dark
set colorcolumn=100
set synmaxcol=300 " Only syntax highlight x columns (improve long line performance)

" Skinny cursor look on insert
:autocmd InsertEnter,InsertLeave * set cul!

" Set leader to single space
let mapleader = "\<Space>"

" Easy copy pasting
set clipboard=unnamed

nnoremap <leader>w :w<cr>
nnoremap <leader>q :wq<CR>

" File Navigation
nnoremap <leader>r :NERDTreeFind<cr>
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>a :Ack!<Space>
nnoremap <leader>f /
nnoremap <leader>h :set hlsearch!<CR>
nnoremap <leader>y :TagbarToggle<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Notes
nnoremap <leader>g :sp ~/.todo.txt<CR>

" Buffer shortcuts
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>d :bd<CR>

" Git shortcuts
nnoremap <leader>b :Gblame<CR>
vnoremap <leader>v :Gbrowse origin/master:%<CR>

" Testing
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tt :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tv :TestVisit<CR>
let test#javascript#jest#options = '--config=./test/jest.config.js'
nmap <Leader>tc :CodeClimateAnalyzeCurrentFile<CR>

" Terminal Mode
tnoremap <leader>d <C-\><C-n>:q<CR>
tnoremap <Esc> <C-\><C-n>

" .go
"nnoremap <leader>v :GoDef<CR>
"nnoremap <leader>l :GoDoc<CR>
"nnoremap <leader>t :GoTest<CR>
let g:go_jump_to_error = 0

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Because my pinky can't handle reaching esc
imap kj <Esc>
imap jk <Esc>

" Tags
set tags=./tags,tags;

" Status line
set statusline=
set statusline+=%#PrimaryBlock#
set statusline+=\ %{mode()} 
set statusline+=%#TeritaryBlock#
set statusline+=\ %f
set statusline+=%M 
set statusline+=%#TeritaryBlock#
set statusline+=%=
set statusline+=%#SecondaryBlock#
set statusline+=\ %Y 
set statusline+=%#PrimaryBlock#
set statusline+=\ %P 

" NERDTree
autocmd bufenter * if (winnr("$") == 0 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeMapOpenInTab  = '<c-t>'
let NERDTreeMapOpenSplit  = '<c-x>'
let NERDTreeMapOpenVSplit = '<c-v>'
map <C-t> :NERDTreeToggle<CR>

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md setlocal textwidth=80

" Completion suggestions
inoremap <C-@> <C-n>

" FuzzyFile search basic setup
let g:ctrlp_show_hidden = 1 " Search hidden dotfiles
let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_modules/*,*/build/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Prettier on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

set encoding=utf-8
filetype plugin indent on " load file type plugins + indentation

"" Whitespace
set expandtab " use spaces, not tabs
set tabstop=2 shiftwidth=2 " a tab is two spaces
set backspace=indent,eol,start " backspace through everything in insert mode
set scrolloff=4 " adds top/bottom buffer between cursor and window
 
"" Searching
set hlsearch " highlight matches
set incsearch " incremental searching

set nobackup " no backup files
set nowritebackup " only in case you don't want a backup file while editing
set noswapfile " no swap files

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" replaces %/ with current directory, and %% with current file
cmap %/ <C-R>=expand("%:p:h")."/"<CR>
cmap %% <C-R>=expand("%")<CR>

