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
nnoremap <leader>d :bd!<CR>

" Git shortcuts
nnoremap <leader>b :Gblame<CR>
vnoremap <leader>v :Gbrowse origin/master:%<CR>

" Testing
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tt :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tv :TestVisit<CR>
let test#strategy = {
  \ 'nearest': 'neovim',
  \ 'file':    'basic',
  \ 'suite':   'basic',
  \ }
let test#javascript#jest#options = '--config=./test/jest.config.js'
nmap <Leader>tc :CodeClimateAnalyzeCurrentFile<CR>

" Terminal Mode
tnoremap <leader>d <C-\><C-n>:q<CR>
tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>
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
let g:NERDTreeWinPos = "right"

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
"let g:prettier#autoformat = 0
"let g:prettier#autoformat_config_present = 1
"autocmd BufWritePre *.ts,*.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

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

" coc setup
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint', 'coc-prettier']

" Shorten updatetime (default is 4000 ms)
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" ShowDocIfNoDiagnostic setup (shows hover documentation when no errors exist)
" function! ShowDocIfNoDiagnostic(timer_id)
"   if (coc#util#has_float() == 0)
"     silent call CocActionAsync('doHover')
"   endif
" endfunction
" 
" function! s:show_hover_doc()
"   call timer_start(500, 'ShowDocIfNoDiagnostic')
" endfunction

" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()
" ShowDocIfNoDiagnostic

" coc actions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>cr <Plug>(coc-rename)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Open bash command results in a new split
command Exec set splitbelow | new | set filetype=sh | read !sh #
