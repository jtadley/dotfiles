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

syn match parens /[\(\)\{\}\[\]]/ | hi parens ctermfg=205 cterm=NONE		guifg=#ff5f5f		guibg=NONE
syn match lambda /λ/ | hi lambda ctermfg=225 cterm=NONE	guifg=#ffdfff		guibg=NONE

hi Cursor 					ctermfg=236 	ctermbg=15 		cterm=NONE 								guifg=#303030		guibg=#ffffff		gui=NONE
hi Visual 					ctermfg=NONE 	ctermbg=238 	cterm=NONE								guifg=NONE			guibg=#444444		gui=NONE
hi CursorLine 										ctermbg=16 		cterm=NONE																guibg=#000000		gui=NONE
hi CursorColumn 									ctermbg=236 	cterm=NONE 																guibg=#303030		gui=NONE
hi ColorColumn 			ctermfg=NONE 	ctermbg=236 	cterm=NONE								guifg=NONE			guibg=#303030		gui=NONE
hi LineNr 					ctermfg=239 	ctermbg=NONE 	cterm=NONE								guifg=#4e4e4e		guibg=NONE			gui=NONE
hi CursorLineNr 		ctermfg=147 	ctermbg=NONE 	cterm=NONE								guifg=#afafff		guibg=NONE			gui=NONE
hi VertSplit 				ctermfg=195 	ctermbg=236 	cterm=bold								guifg=#dfffff		guibg=#303030		gui=bold
hi MatchParen 			ctermfg=NONE 	ctermbg=239 	cterm=NONE								guifg=NONE			guibg=#4e4e4e		gui=NONE
hi StatusLine 			ctermfg=248 	ctermbg=234 	cterm=NONE								guifg=#a8a8a8		guibg=#1c1c1c		gui=NONE
hi StatusLineNC 		ctermfg=195 	ctermbg=236 	cterm=NONE								guifg=#dfffff		guibg=#303030		gui=NONE
hi Pmenu 						ctermfg=NONE 	ctermbg=NONE 	cterm=NONE								guifg=NONE			guibg=NONE			gui=NONE
hi PmenuSel 				ctermfg=NONE 	ctermbg=236 	cterm=NONE								guifg=NONE			guibg=#303030		gui=NONE
hi IncSearch 				ctermfg=236 	ctermbg=111 	cterm=NONE 								guifg=#303030		guibg=#87afff		gui=NONE
hi Search 					ctermfg=NONE 	ctermbg=NONE 	cterm=inverse							guifg=NONE			guibg=NONE			gui=inverse
hi Directory 				ctermfg=85 		ctermbg=NONE 	cterm=NONE								guifg=#5fffaf		guibg=NONE			gui=NONE
hi Folded 					ctermfg=248 	ctermbg=234 	cterm=NONE								guifg=#a8a8a8		guibg=#1c1c1c		gui=NONE
hi SignColumn 			ctermfg=248 	ctermbg=234 	cterm=NONE								guifg=#a8a8a8		guibg=#1c1c1c		gui=NONE
hi FoldColmun 			ctermfg=248 	ctermbg=234 	cterm=NONE								guifg=#a8a8a8		guibg=#1c1c1c		gui=NONE
hi Normal 					ctermfg=195 	ctermbg=233															guifg=#dfffff		guibg=#121212
hi Boolean 					ctermfg=85 		ctermbg=NONE 	cterm=NONE								guifg=#5fffaf		guibg=NONE			gui=NONE
hi Character 				ctermfg=85 		ctermbg=NONE 	cterm=NONE								guifg=#5fffaf		guibg=NONE			gui=NONE
hi Comment					ctermfg=103		ctermbg=NONE 	cterm=NONE								guifg=#8787af		guibg=NONE			gui=NONE
hi Conditional 			ctermfg=147	 	ctermbg=NONE 	cterm=NONE								guifg=#afafff		guibg=NONE			gui=NONE
hi Constant 				ctermfg=NONE 	ctermbg=NONE 	cterm=NONE								guifg=NONE			guibg=NONE			gui=NONE
hi Define 					ctermfg=147 	ctermbg=NONE 	cterm=NONE								guifg=#afafff		guibg=NONE			gui=NONE
hi DiffAdd 					ctermfg=195 	ctermbg=79 		cterm=bold								guifg=#dfffff		guibg=#5fd7af		gui=bold
hi DiffDelete 			ctermfg=196 	ctermbg=NONE 	cterm=NONE								guifg=#ff0000		guibg=NONE			gui=NONE
hi DiffChange 			ctermfg=195 	ctermbg=221 	cterm=NONE								guifg=#dfffff		guibg=#ffdf5f		gui=NONE
hi DiffText 				ctermfg=195 	ctermbg=221 	cterm=bold								guifg=#dfffff		guibg=#ffdf5f		gui=bold
hi WarningMsg 			ctermfg=195 	ctermbg=147 	cterm=NONE								guifg=#dfffff		guibg=#afafff		gui=NONE
hi Float 						ctermfg=85 		ctermbg=NONE 	cterm=NONE								guifg=#5fffaf		guibg=NONE			gui=NONE
hi Function 				ctermfg=51 		ctermbg=NONE 	cterm=NONE								guifg=#00ffff		guibg=NONE			gui=NONE
hi Identifier 			ctermfg=87 		ctermbg=NONE 	cterm=NONE								guifg=#5fffff		guibg=NONE			gui=NONE
hi Keyword 					ctermfg=147 	ctermbg=NONE 	cterm=NONE								guifg=#afafff		guibg=NONE			gui=NONE
hi Label 						ctermfg=111 	ctermbg=NONE 	cterm=NONE								guifg=#87afff		guibg=NONE			gui=NONE
hi NonText 					ctermfg=195 	ctermbg=NONE 	cterm=NONE								guifg=#dfffff		guibg=NONE			gui=NONE
hi Number 					ctermfg=85 		ctermbg=NONE 	cterm=NONE								guifg=#5fffaf		guibg=NONE			gui=NONE
hi Operator 				ctermfg=147	 	ctermbg=NONE 	cterm=NONE								guifg=#afafff		guibg=NONE			gui=NONE
hi PreProc 					ctermfg=147	 	ctermbg=NONE 	cterm=NONE								guifg=#afafff		guibg=NONE			gui=NONE
hi Special 					ctermfg=195	 	ctermbg=NONE 	cterm=NONE								guifg=#dfffff		guibg=NONE			gui=NONE
hi SpecialKey 			ctermfg=195 	ctermbg=235 	cterm=NONE								guifg=#dfffff		guibg=#262626		gui=NONE
hi Statement 				ctermfg=147 	ctermbg=NONE 	cterm=NONE								guifg=#afafff		guibg=NONE			gui=NONE
hi StorageClass 		ctermfg=87 		ctermbg=NONE 	cterm=NONE								guifg=#5fffff		guibg=NONE			gui=NONE
hi String 					ctermfg=147 	ctermbg=NONE 	cterm=NONE								guifg=#afafff		guibg=NONE			gui=NONE
hi Tag 							ctermfg=147 	ctermbg=NONE 	cterm=NONE								guifg=#afafff		guibg=NONE			gui=NONE
hi Title 						ctermfg=195 	ctermbg=NONE 	cterm=bold								guifg=#dfffff		guibg=NONE			gui=bold
hi Todo 						ctermfg=33 		ctermbg=NONE 	cterm=inverse,bold				guifg=#0087ff		guibg=NONE			gui=inverse,bold
hi Type 						ctermfg=153 	ctermbg=NONE 	cterm=NONE								guifg=#afd7ff		guibg=NONE			gui=NONE
hi Underlined 			ctermfg=NONE 	ctermbg=NONE 	cterm=underline						guifg=NONE			guibg=NONE			gui=underline
hi ModeMsg 					ctermfg=99 		ctermbg=NONE 	cterm=NONE								guifg=#875fff		guibg=NONE			gui=NONE
hi WildMenu 				ctermfg=195 	ctermbg=NONE 	cterm=NONE								guifg=#dfffff		guibg=NONE			gui=NONE

"
" Vim Script {{{
hi vimGroupName 		ctermfg=87 		ctermbg=NONE 	cterm=NONE								guifg=#5fffff		guibg=NONE			gui=NONE
hi vimGroup 				ctermfg=87 		ctermbg=NONE 	cterm=NONE								guifg=#5fffff		guibg=NONE			gui=NONE
hi vimOption 				ctermfg=87 		ctermbg=NONE 	cterm=NONE								guifg=#5fffff		guibg=NONE			gui=NONE
hi vimHiCtermFgBg 	ctermfg=NONE 	ctermbg=NONE 	cterm=NONE								guifg=NONE			guibg=NONE			gui=NONE
hi vimHiGuiFgBg 		ctermfg=NONE 	ctermbg=NONE 	cterm=NONE								guifg=NONE			guibg=NONE			gui=NONE
" }}}


execute "set background=dark"
"-------------------
