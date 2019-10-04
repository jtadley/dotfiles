" Abstract Theme v1.0.0
"
" https://github.com/jdsimcoe/abstract.vim
"
" Copyright 2016. All rights reserved
"
" Code licensed under the MIT license
" https://mit-license.org/
"
" @author Jonathan Simcoe <@jdsimcoe>

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "adley"

syn match parens /[\(\)\{\}\[\]]/ | hi parens ctermfg=205 cterm=NONE
syn match lambda /λ/ | hi lambda ctermfg=225 cterm=NONE

hi Cursor ctermfg=236 ctermbg=15 cterm=NONE
hi Visual ctermfg=NONE ctermbg=241 cterm=NONE
hi CursorLine ctermbg=16 cterm=NONE
hi CursorColumn ctermbg=236 cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE
hi LineNr ctermfg=239 ctermbg=NONE cterm=NONE
hi VertSplit ctermfg=195 ctermbg=236 cterm=bold
hi MatchParen ctermfg=NONE ctermbg=239 cterm=NONE
hi StatusLine ctermfg=195 ctermbg=236 cterm=bold
hi StatusLineNC ctermfg=195 ctermbg=236 cterm=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSel ctermfg=NONE ctermbg=236 cterm=NONE
hi IncSearch ctermfg=236 ctermbg=111 cterm=NONE
hi Search ctermfg=NONE ctermbg=53 cterm=NONE
hi Directory ctermfg=85 ctermbg=NONE cterm=NONE
hi Folded ctermfg=248 ctermbg=234 cterm=NONE
hi SignColumn ctermfg=248 ctermbg=234 cterm=NONE
hi FoldColmun ctermfg=248 ctermbg=234 cterm=NONE
hi Normal ctermfg=195 ctermbg=233
hi Boolean ctermfg=85 ctermbg=NONE cterm=NONE
hi Character ctermfg=85 ctermbg=NONE cterm=NONE
hi Comment ctermfg=103 ctermbg=NONE cterm=NONE
hi Conditional ctermfg=147 ctermbg=NONE cterm=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE
hi Define ctermfg=147 ctermbg=NONE cterm=NONE
hi DiffAdd ctermfg=195 ctermbg=79 cterm=bold
hi DiffDelete ctermfg=196 ctermbg=NONE cterm=NONE
hi DiffChange ctermfg=195 ctermbg=221 cterm=NONE
hi DiffText ctermfg=195 ctermbg=221 cterm=bold
hi ErrorMsg ctermfg=195 ctermbg=147 cterm=NONE
hi WarningMsg ctermfg=195 ctermbg=147 cterm=NONE
hi Float ctermfg=85 ctermbg=NONE cterm=NONE
hi Function ctermfg=51 ctermbg=NONE cterm=NONE
hi Identifier ctermfg=87 ctermbg=NONE cterm=NONE
hi Keyword ctermfg=147 ctermbg=NONE cterm=NONE
hi Label ctermfg=111 ctermbg=NONE cterm=NONE
hi NonText ctermfg=195 ctermbg=NONE cterm=NONE
hi Number ctermfg=85 ctermbg=NONE cterm=NONE
hi Operator ctermfg=147 ctermbg=NONE cterm=NONE
hi PreProc ctermfg=147 ctermbg=NONE cterm=NONE
hi Special ctermfg=195 ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=195 ctermbg=235 cterm=NONE
hi Statement ctermfg=147 ctermbg=NONE cterm=NONE
hi StorageClass ctermfg=87 ctermbg=NONE cterm=NONE
hi String ctermfg=147 ctermbg=NONE cterm=NONE
hi Tag ctermfg=147 ctermbg=NONE cterm=NONE
hi Title ctermfg=195 ctermbg=NONE cterm=bold
hi Todo ctermfg=33 ctermbg=NONE cterm=inverse,bold
hi Type ctermfg=153 ctermbg=NONE cterm=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline

"
" Vim Script {{{
hi vimGroupName ctermfg=87 ctermbg=NONE cterm=NONE
hi vimGroup ctermfg=87 ctermbg=NONE cterm=NONE
hi vimOption ctermfg=87 ctermbg=NONE cterm=NONE
hi vimHiCtermFgBg ctermfg=NONE ctermbg=NONE cterm=NONE
hi vimHiGuiFgBg ctermfg=NONE ctermbg=NONE cterm=NONE
" }}}


execute "set background=dark"
"-------------------

