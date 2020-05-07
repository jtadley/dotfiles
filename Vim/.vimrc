set nocompatible
filetype plugin indent on
filetype plugin on
execute pathogen#infect()

let mapleader=","
let maplocalleader=","
set clipboard=unnamedplus

" ---------------------------------------------------------------------
" Line numbering
set relativenumber
set number

" ---------------------------------------------------------------------
" Automatic Command Line History
nnoremap : q:i
nnoremap / q/i

" ---------------------------------------------------------------------
" Because hat and dollar are so difficult
nnoremap H ^
nnoremap L $

" ---------------------------------------------------------------------
" Tabs
set tabstop=2
set softtabstop=0
set shiftwidth=2
set smarttab

" ---------------------------------------------------------------------
" Text Wrapping
set wrap

" ---------------------------------------------------------------------
" Display above / below cursor lines
set scrolloff=10

" ---------------------------------------------------------------------
" Status var
set laststatus=2

" ---------------------------------------------------------------------
" Highlight matching parenthesis
set matchpairs+=<:>
"
" ---------------------------------------------------------------------
if has("autocmd")
	au BufReadPost *.rkt,*.rktl set filetype=scheme
endif

" ---------------------------------------------------------------------
" Coloring
syntax on
colorscheme adley
set background=dark
" set background=dark
" autocmd VimEnter * hi Normal ctermbg=None
" murphy *torte archery jellybeans lightning *lucius materialbox gruvbox
" scheakur
nnoremap <Leader>c1 :colorscheme torte<cr>
nnoremap <Leader>c2 :colorscheme lucius<cr>
nnoremap <Leader>c3 :colorscheme adley<cr>
nnoremap <Leader>c4 :colorscheme seoul256<cr>
nnoremap <Leader>c5 :colorscheme jellybeans<cr>
nnoremap <Leader>c6 :colorscheme lightning<cr>
nnoremap <Leader>c7 :colorscheme scheakur<cr>
nnoremap <Leader>c8 :colorscheme materialbox<cr>
nnoremap <Leader>c9 :colorscheme murphy<cr>
nnoremap <Leader>c0 :colorscheme gruvbox<cr>

syntax enable

" ---------------------------------------------------------------------
augroup remember_folds
	autocmd!
	autocmd BufWinLeave * mkview
	autocmd BufWinEnter * silent! loadview
augroup END

" ---------------------------------------------------------------------
" Searching
set hlsearch
set incsearch
set showmatch

set autoindent

set showcmd

set cursorline

" ---------------------------------------------------------------------
" Filetype detection and specific indentation file loading
filetype indent on

" Nice autocomplete menu
set wildmenu

" Don't redraw until end of op's
set lazyredraw

" Move over lines visually
nnoremap j gj
nnoremap k gk

" jk is esc
" inoremap jk <esc>


" See undo tree
nnoremap <leader>u :GundoToggle<CR>
" Save entire session
nnoremap <leader>s :mksession<CR>

" ---------------------------------------------------------------------
" Clear search highlighting
nnoremap <Leader>, :noh<cr>

" ---------------------------------------------------------------------
"  Execution
nnoremap <Leader>md :! make download<CR>
nnoremap <Leader>mt :! make test<CR>
nnoremap <Leader>mm :! make<CR>
nnoremap <Leader>ol :! eval `opam config env`<CR>

autocmd FileType scheme nnoremap <F5> :! raco test %:p<CR>
autocmd FileType tex nnoremap <F5> :! pdflatex %:p && rm %:t:r.aux && rm %:t:r.log<CR>
autocmd FileType dafny nnoremap <F5> :! dafny %:p<CR>
autocmd FileType markdown nnoremap <F5> :! pandoc %:p -f markdown_github --pdf-engine=pdflatex -o %:t:r.pdf<CR>
autocmd FileType markdown nnoremap <F6> :! pandoc %:p -t beamer -o %:t:r.pdf<CR>
autocmd FileType markdown nnoremap <F7> :! pandoc %:p -f markdown_github --pdf-engine=xelatex -o %:t:r.pdf<CR>
autocmd FileType haskell nnoremap <F5> :! ghc -o %:t:r %:p && ./%:t:r && rm *.hi && rm *.o<CR>
autocmd FileType java nnoremap <F5> :! javac %:p && java %:t:r<CR>
autocmd FileType python nnoremap <F5> :! python3.8 %:p<CR>

"autocmd VimLeave *.tex !texclear %

" ---------------------------------------------------------------------
"  Tab/Space Swapping
command! -nargs=0 TabSpace2 exec "%s/	/  /g"
command! -nargs=0 TabSpace4 exec "%s/	/    /g"

command! -nargs=0 SpaceTab2 exec "%s/  /	/g"
command! -nargs=0 SpaceTab4 exec "%s/    /	/g"

" ---------------------------------------------------------------------
"  Git pushing
command! -nargs=1 Gitall exec "! git add . && git commit -m '".<q-args>."' && git push"
command! -nargs=1 Gitcur exec "! git add %:p && git commit -m '".<q-args>."' && git push"

" ---------------------------------------------------------------------
"nnoremap <Tab> :bnext<cr>
"nnoremap <S-Tab> :bprevious<cr>

" ---------------------------------------------------------------------
" Background toggle
let t:is_bg = 2
function! Toggle_bg()
	if t:is_bg == 0
		hi Normal ctermbg=None
		let t:is_bg = 1
	else
		if t:is_bg == 1
			colorscheme lucius
			set background=light
			let t:is_bg = 2
		else
			colorscheme adley
			set background=dark
			let t:is_bg = 0
		endif
	endif
endfunction
nnoremap <C-t> : call Toggle_bg()<CR>

" ---------------------------------------------------------------------
"  DAFNY
augroup twig_ft
	au!
	autocmd BufNewFile,BufRead	*.dpy	set syntax=dafny
augroup END

" ---------------------------------------------------------------------
"  RACKET
autocmd FileType scheme set expandtab
"autocmd FileType scheme RainbowParenthesesActivate<CR>
autocmd BufNewFile,BufRead	*.pie	set syntax=scheme

" ---------------------------------------------------------------------
"  HASKELL
autocmd FileType haskell set expandtab

" ---------------------------------------------------------------------
"  RAINBOW PARENTHESES
nnoremap <C-y> : RainbowParenthesesToggle<CR>

" ---------------------------------------------------------------------
"  Blank line inserting
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" ---------------------------------------------------------------------
"  LATEX
" goto next hole
autocmd FileType tex nnoremap <Space><Space> /(<>)<CR>:noh<CR>4xi

" ---------------------------------------------------------------------
"  Highlighted Yank
let g:highlightedyank_highlight_duration = 400

" ---------------------------------------------------------------------
"  RedTT
" let g:redtt_path = 'dune exec -- redtt'
let g:redtt_path = '/home/draag/_build/default/Applications/redtt/src/bin/main.exe'
set rtp^="/home/draag/.opam/4.09.0/share/ocp-indent/vim"

" ---------------------------------------------------------------------
" ---------------------------------------------------------------------
" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
" ## added by OPAM user-setup for vim / ocp-indent ## 76f3ac17f5b6cdf2c7ac1f4a25c3a37a ## you can edit, but keep this line
if count(s:opam_available_tools,"ocp-indent") == 0
  source "/home/draag/.opam/4.09.0/share/ocp-indent/vim/indent/ocaml.vim"
endif
" ## end of OPAM user-setup addition for vim / ocp-indent ## keep this line
" ---------------------------------------------------------------------
" ---------------------------------------------------------------------
