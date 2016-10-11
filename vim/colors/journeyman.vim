" 'journeyman.vim' -- Vim color scheme.
" Author:       Danny Glunz (dglu.nz)
" Description:  Simpler, muted variation of 'apprentice'
"               by Romain Lafourcade (romainlafourcade@gmail.com)

" COLOR           HEX         XTERM
" =================================
" purple          #5f5f87     60
" green           #5f875f     65
" aqua            #5f8787     66
" blue            #5f87af     67
" light aqua      #5fafaf     73
" ocre            #87875f     101
" light purple    #8787af     103
" light green     #87af87     108
" light blue      #8fafd7     110
" red             #af5f5f     131
" orange          #ff8700     208
" yellow          #ffffaf     229
" white           #ffffff     231
" almost black    #1c1c1c     234
" darker grey     #262626     235
" dark grey       #303030     236
" grey            #444444     238
" medium grey     #585858     240
" light grey      #6c6c6c     242
" lighter grey    #bcbcbc     250

set background=dark
hi clear
syntax reset

let colors_name = "journeyman"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
  if ($TERM_PROGRAM == 'iTerm.app')
    hi Normal         ctermbg=235  ctermfg=252  guibg=#303030 guifg=#bcbcbc cterm=NONE           gui=NONE
    hi LineNr         ctermbg=235  ctermfg=240  guibg=#303030 guifg=#585858 cterm=NONE           gui=NONE
    hi FoldColumn     ctermbg=233  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
    hi Folded         ctermbg=233  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
    hi MatchParen     ctermbg=233  ctermfg=229  guibg=#1c1c1c guifg=#ffffaf cterm=NONE           gui=NONE
    hi signColumn     ctermbg=233  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
  else
    hi Normal         ctermbg=235  ctermfg=250  guibg=#262626 guifg=#bcbcbc cterm=NONE           gui=NONE
    hi LineNr         ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
    hi FoldColumn     ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
    hi Folded         ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
    hi MatchParen     ctermbg=234  ctermfg=229  guibg=#1c1c1c guifg=#ffffaf cterm=NONE           gui=NONE
    hi signColumn     ctermbg=234  ctermfg=242  guibg=#1c1c1c guifg=#6c6c6c cterm=NONE           gui=NONE
  endif

  hi Comment          ctermbg=NONE ctermfg=245  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE
  hi Conceal          ctermbg=NONE ctermfg=250  guibg=NONE    guifg=#bcbcbc cterm=NONE           gui=NONE
  hi Constant         ctermbg=NONE ctermfg=208  guibg=NONE    guifg=#ff8700 cterm=NONE           gui=NONE
  hi Error            ctermbg=NONE ctermfg=131  guibg=NONE    guifg=#af5f5f cterm=reverse        gui=reverse
  hi Identifier       ctermbg=NONE ctermfg=67   guibg=NONE    guifg=#5f87af cterm=NONE           gui=NONE
  hi Ignore           ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
  hi PreProc          ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#5f8787 cterm=NONE           gui=NONE
  hi Special          ctermbg=NONE ctermfg=65   guibg=NONE    guifg=#5f875f cterm=NONE           gui=NONE
  hi Statement        ctermbg=NONE ctermfg=110  guibg=NONE    guifg=#8fafd7 cterm=NONE           gui=NONE
  hi String           ctermbg=NONE ctermfg=108  guibg=NONE    guifg=#87af87 cterm=NONE           gui=NONE
  hi Todo             ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=reverse        gui=reverse
  hi Type             ctermbg=NONE ctermfg=103  guibg=NONE    guifg=#8787af cterm=NONE           gui=NONE
  hi Underlined       ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#5f8787 cterm=underline      gui=underline

  hi NonText          ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE

  hi Pmenu            ctermbg=238  ctermfg=250  guibg=#444444 guifg=#bcbcbc cterm=NONE           gui=NONE
  hi PmenuSbar        ctermbg=240  ctermfg=NONE guibg=#585858 guifg=NONE    cterm=NONE           gui=NONE
  hi PmenuSel         ctermbg=66   ctermfg=235  guibg=#5f8787 guifg=#262626 cterm=NONE           gui=NONE
  hi PmenuThumb       ctermbg=66   ctermfg=66   guibg=#5f8787 guifg=#5f8787 cterm=NONE           gui=NONE

  hi ErrorMsg         ctermbg=131  ctermfg=235  guibg=#af5f5f guifg=#262626 cterm=NONE           gui=NONE
  hi ModeMsg          ctermbg=108  ctermfg=235  guibg=#87af87 guifg=#262626 cterm=NONE           gui=NONE
  hi MoreMsg          ctermbg=NONE ctermfg=66   guibg=NONE    guifg=#5f8787 cterm=NONE           gui=NONE
  hi Question         ctermbg=NONE ctermfg=108  guibg=NONE    guifg=#87af87 cterm=NONE           gui=NONE
  hi WarningMsg       ctermbg=NONE ctermfg=131  guibg=NONE    guifg=#af5f5f cterm=NONE           gui=NONE

  hi TabLine          ctermbg=235  ctermfg=252  guibg=#444444 guifg=#87875f cterm=reverse        gui=NONE
  hi TabLineFill      ctermbg=235  ctermfg=252  guibg=#444444 guifg=#444444 cterm=reverse        gui=NONE
  hi TabLineSel       ctermbg=252  ctermfg=235  guibg=#87875f guifg=#262626 cterm=reverse        gui=NONE

  hi Cursor           ctermbg=240  ctermfg=NONE guibg=#6c6c6c guifg=NONE    cterm=NONE           gui=NONE
  hi CursorColumn     ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE
  hi CursorLineNr     ctermbg=236  ctermfg=73   guibg=#303030 guifg=#5fafaf cterm=NONE           gui=NONE
  hi CursorLine       ctermbg=236  ctermfg=NONE guibg=#303030 guifg=NONE    cterm=NONE           gui=NONE

  hi helpLeadBlank    ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE
  hi helpNormal       ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=NONE           gui=NONE

  hi StatusLine       ctermbg=250  ctermfg=238  guibg=NONE    guifg=#262626 cterm=reverse        gui=NONE
  hi StatusLineNC     ctermbg=238  ctermfg=250  guibg=NONE    guifg=#87875f cterm=reverse        gui=italic

  hi Visual           ctermbg=235  ctermfg=110  guibg=#262626 guifg=#8fafd7 cterm=reverse        gui=reverse
  hi VisualNOS        ctermbg=NONE ctermfg=NONE guibg=NONE    guifg=NONE    cterm=underline      gui=underline

  hi VertSplit        ctermbg=238  ctermfg=238  guibg=#444444 guifg=#444444 cterm=NONE           gui=NONE
  hi WildMenu         ctermbg=110  ctermfg=235  guibg=#8fafd7 guifg=#262626 cterm=NONE           gui=NONE

  hi Function         ctermbg=NONE ctermfg=229  guibg=NONE    guifg=#ffffaf cterm=NONE           gui=NONE
  hi SpecialKey       ctermbg=NONE ctermfg=240  guibg=NONE    guifg=#585858 cterm=NONE           gui=NONE
  hi Title            ctermbg=NONE ctermfg=231  guibg=NONE    guifg=#ffffff cterm=NONE           gui=NONE

  hi DiffAdd          ctermbg=235  ctermfg=108  guibg=#262626 guifg=#87af87 cterm=reverse        gui=reverse
  hi DiffChange       ctermbg=235  ctermfg=103  guibg=#262626 guifg=#8787af cterm=reverse        gui=reverse
  hi DiffDelete       ctermbg=235  ctermfg=131  guibg=#262626 guifg=#af5f5f cterm=reverse        gui=reverse
  hi DiffText         ctermbg=235  ctermfg=208  guibg=#262626 guifg=#ff8700 cterm=reverse        gui=reverse

  hi IncSearch        ctermbg=131  ctermfg=235  guibg=#af5f5f guifg=#262626 cterm=NONE           gui=NONE
  hi Search           ctermbg=229  ctermfg=235  guibg=#ffffaf guifg=#262626 cterm=NONE           gui=NONE

  hi Directory        ctermbg=NONE ctermfg=73   guibg=NONE    guifg=#5fafaf cterm=NONE           gui=NONE

  if has("gui_running")
    hi SpellBad         ctermbg=NONE ctermfg=131  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#af5f5f
    hi SpellCap         ctermbg=NONE ctermfg=73   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#5fafaf
    hi SpellLocal       ctermbg=NONE ctermfg=65   guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#5f875f
    hi SpellRare        ctermbg=NONE ctermfg=208  guibg=NONE    guifg=NONE    cterm=undercurl      gui=undercurl guisp=#ff8700
  else
    hi SpellBad         ctermbg=NONE ctermfg=131  guibg=NONE    guifg=#af5f5f cterm=undercurl      gui=undercurl guisp=NONE
    hi SpellCap         ctermbg=NONE ctermfg=73   guibg=NONE    guifg=#5fafaf cterm=undercurl      gui=undercurl guisp=NONE
    hi SpellLocal       ctermbg=NONE ctermfg=65   guibg=NONE    guifg=#5f875f cterm=undercurl      gui=undercurl guisp=NONE
    hi SpellRare        ctermbg=NONE ctermfg=208  guibg=NONE    guifg=#ff8700 cterm=undercurl      gui=undercurl guisp=NONE
  endif 

  hi ColorColumn      ctermbg=236 ctermfg=NONE guibg=#af5f5f guifg=NONE    cterm=NONE           gui=NONE
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
  set t_Co=16

  hi Normal           ctermbg=NONE        ctermfg=white          cterm=NONE

  set background=dark

  hi Comment          ctermbg=NONE        ctermfg=gray        cterm=NONE
  hi Conceal          ctermbg=NONE        ctermfg=white       cterm=NONE
  hi Constant         ctermbg=NONE        ctermfg=red         cterm=NONE
  hi Function         ctermbg=NONE        ctermfg=yellow      cterm=NONE
  hi Identifier       ctermbg=NONE        ctermfg=darkblue    cterm=NONE
  hi PreProc          ctermbg=NONE        ctermfg=darkcyan    cterm=NONE
  hi Special          ctermbg=NONE        ctermfg=darkgreen   cterm=NONE
  hi Statement        ctermbg=NONE        ctermfg=blue        cterm=NONE
  hi String           ctermbg=NONE        ctermfg=green       cterm=NONE
  hi Todo             ctermbg=NONE        ctermfg=NONE        cterm=reverse
  hi Type             ctermbg=NONE        ctermfg=magenta     cterm=NONE

  hi Error            ctermbg=NONE        ctermfg=darkred     cterm=reverse
  hi Ignore           ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi Underlined       ctermbg=NONE        ctermfg=NONE        cterm=reverse

  hi LineNr           ctermbg=black       ctermfg=gray        cterm=NONE
  hi NonText          ctermbg=NONE        ctermfg=darkgray    cterm=NONE

  hi Pmenu            ctermbg=darkgray    ctermfg=white       cterm=NONE
  hi PmenuSbar        ctermbg=gray        ctermfg=NONE        cterm=NONE
  hi PmenuSel         ctermbg=darkcyan    ctermfg=black       cterm=NONE
  hi PmenuThumb       ctermbg=darkcyan    ctermfg=NONE        cterm=NONE

  hi ErrorMsg         ctermbg=darkred     ctermfg=black       cterm=NONE
  hi ModeMsg          ctermbg=darkgreen   ctermfg=black       cterm=NONE
  hi MoreMsg          ctermbg=NONE        ctermfg=darkcyan    cterm=NONE
  hi Question         ctermbg=NONE        ctermfg=green       cterm=NONE
  hi WarningMsg       ctermbg=NONE        ctermfg=darkred     cterm=NONE

  hi TabLine          ctermbg=darkgray    ctermfg=darkyellow  cterm=NONE
  hi TabLineFill      ctermbg=darkgray    ctermfg=black       cterm=NONE
  hi TabLineSel       ctermbg=darkyellow  ctermfg=black       cterm=NONE

  hi Cursor           ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi CursorColumn     ctermbg=darkgray    ctermfg=NONE        cterm=NONE
  hi CursorLineNr     ctermbg=black       ctermfg=cyan        cterm=NONE
  hi CursorLine       ctermbg=darkgray    ctermfg=NONE        cterm=NONE

  hi helpLeadBlank    ctermbg=NONE        ctermfg=NONE        cterm=NONE
  hi helpNormal       ctermbg=NONE        ctermfg=NONE        cterm=NONE

  hi StatusLine       ctermbg=black       ctermfg=black       cterm=NONE
  hi StatusLineNC     ctermbg=darkgray    ctermfg=black       cterm=NONE

  hi Visual           ctermbg=black       ctermfg=blue        cterm=reverse
  hi VisualNOS        ctermbg=black       ctermfg=white       cterm=reverse

  hi FoldColumn       ctermbg=black       ctermfg=darkgray    cterm=NONE
  hi Folded           ctermbg=black       ctermfg=darkgray    cterm=NONE

  hi VertSplit        ctermbg=darkgray    ctermfg=darkgray    cterm=NONE
  hi WildMenu         ctermbg=blue        ctermfg=black       cterm=NONE

  hi SpecialKey       ctermbg=NONE        ctermfg=darkgray    cterm=NONE
  hi Title            ctermbg=NONE        ctermfg=white       cterm=NONE

  hi DiffAdd          ctermbg=black       ctermfg=green       cterm=reverse
  hi DiffChange       ctermbg=black       ctermfg=magenta     cterm=reverse
  hi DiffDelete       ctermbg=black       ctermfg=darkred     cterm=reverse
  hi DiffText         ctermbg=black       ctermfg=red         cterm=reverse

  hi IncSearch        ctermbg=darkred     ctermfg=black       cterm=NONE
  hi Search           ctermbg=yellow      ctermfg=black       cterm=NONE

  hi Directory        ctermbg=NONE        ctermfg=cyan        cterm=NONE
  hi MatchParen       ctermbg=black       ctermfg=yellow      cterm=NONE

  hi SpellBad         ctermbg=NONE        ctermfg=darkred     cterm=undercurl
  hi SpellCap         ctermbg=NONE        ctermfg=darkyellow  cterm=undercurl
  hi SpellLocal       ctermbg=NONE        ctermfg=darkgreen   cterm=undercurl
  hi SpellRare        ctermbg=NONE        ctermfg=darkmagenta cterm=undercurl

  hi ColorColumn      ctermbg=darkred     ctermfg=NONE        cterm=NONE
  hi SignColumn       ctermbg=black       ctermfg=darkgray    cterm=NONE
endif

hi link Boolean                  Constant
hi link Character                Constant
hi link Conditional              Statement
hi link Debug                    Special
hi link Define                   PreProc
hi link Delimiter                Special
hi link Exception                Statement
hi link Float                    Number
hi link HelpCommand              Statement
hi link HelpExample              Statement
hi link Include                  PreProc
hi link Keyword                  Statement
hi link Label                    Statement
hi link Macro                    PreProc
hi link Number                   Constant
hi link Operator                 Statement
hi link PreCondit                PreProc
hi link Repeat                   Statement
hi link SpecialChar              Special
hi link SpecialComment           Special
hi link StorageClass             Type
hi link Structure                Type
hi link Tag                      Special
hi link Typedef                  Type

hi link htmlEndTag               htmlTagName
hi link htmlLink                 Function
hi link htmlSpecialTagName       htmlTagName
hi link htmlTag                  htmlTagName
hi link htmlBold                 Normal
hi link htmlItalic               Normal
hi link xmlTag                   Statement
hi link xmlTagName               Statement
hi link xmlEndTag                Statement

hi link markdownItalic           Preproc
hi link asciidocQuotedEmphasized Preproc

hi link diffBDiffer              WarningMsg
hi link diffCommon               WarningMsg
hi link diffDiffer               WarningMsg
hi link diffIdentical            WarningMsg
hi link diffIsA                  WarningMsg
hi link diffNoEOL                WarningMsg
hi link diffOnly                 WarningMsg
hi link diffRemoved              WarningMsg
hi link diffAdded                String

if has("nvim") && exists("&termguicolors") && &termguicolors
  let g:terminal_color_0    = "#1C1C1C"
  let g:terminal_color_8    = "#444444"
  let g:terminal_color_1    = "#AF5F5F"
  let g:terminal_color_9    = "#FF8700"
  let g:terminal_color_2    = "#5F875F"
  let g:terminal_color_10   = "#87AF87"
  let g:terminal_color_3    = "#87875F"
  let g:terminal_color_11   = "#FFFFAF"
  let g:terminal_color_4    = "#5F87AF"
  let g:terminal_color_12   = "#8FAFD7"
  let g:terminal_color_5    = "#5F5F87"
  let g:terminal_color_13   = "#8787AF"
  let g:terminal_color_6    = "#5F8787"
  let g:terminal_color_14   = "#5FAFAF"
  let g:terminal_color_7    = "#6C6C6C"
  let g:terminal_color_15   = "#FFFFFF"
endif