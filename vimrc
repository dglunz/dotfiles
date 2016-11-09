execute pathogen#infect()
set rtp+=/usr/local/go/misc/vim
set shell=zsh\ --login
syntax on
set ttyfast

colorscheme journeyman
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set colorcolumn=80
" Only syntax highlight 120 columns (improve long line performance)
set synmaxcol=200

" The Leader
let mapleader = "\<Space>"
nnoremap <leader>1 :colo journeyman<CR>
nnoremap <leader>2 :colo Tomorrow-Night<CR>
nnoremap <leader>3 :colo Tomorrow<CR>

" Easy copy pasting
set clipboard=unnamed

nnoremap <leader>y :TagbarToggle<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :wq<CR>
nnoremap <leader>r :NERDTreeFind<cr>
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>f /
nnoremap <leader>h :set hlsearch!<CR>
" Switch between the last two files
nnoremap <leader><leader> <c-^>
nnoremap <leader>a :Ack!<Space>
nnoremap <leader>g :sp ~/Desktop/todo.txt<CR>

" Buffer shortcuts
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>d :bd<CR>

" Git shortcuts
nnoremap <leader>b :Gblame<CR>

" .js
nnoremap <leader>c :w<CR>:call RunAllSpecs()<CR>
nnoremap <leader>s :call RunNearestSpec()<CR>

" .go
nnoremap <leader>v :GoDef<CR>
nnoremap <leader>l :GoDoc<CR>
nnoremap <leader>t :GoTest<CR>
let g:go_jump_to_error = 0

" .rb

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use relative number in normal mode and absolute number in insert mode
set relativenumber
set number
set hidden

" Because my pinky can't handle reaching esc
imap kj <Esc>
imap jk <Esc>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tomorrow'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeMapOpenInTab  = '<c-t>'
let NERDTreeMapOpenSplit  = '<c-x>'
let NERDTreeMapOpenVSplit = '<c-v>'
map <C-t> :NERDTreeToggle<CR>
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md setlocal textwidth=80

let g:vim_markdown_folding_disabled=1

" Completion suggestions
inoremap <C-@> <C-n>

" FuzzyFile search basic setup
let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_modules/*,*/build/*
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"" ==========  These come from Mislav (http://mislav.uniqpath.com/2011/12/vim-revisited/)  ==========
set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching

"" ==========  These come from JoshCheek (https://github.com/joshcheek/dotfiles)  ==========
set nobackup                 " no backup files
set nowritebackup            " only in case you don't want a backup file while editing
set noswapfile               " no swap files
set scrolloff=4              " adds top/bottom buffer between cursor and window
set cursorline               " colours the line the cursor is on

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"" strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
autocmd FileType coffee,cpp,py,go,html,jade,erb,rb,js autocmd BufWritePre :call <SID>StripTrailingWhitespaces()

" replaces %/ with current directory, and %% with current file
cmap %/ <C-R>=expand("%:p:h")."/"<CR>
cmap %% <C-R>=expand("%")<CR>

