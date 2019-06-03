set nocompatible
filetype plugin indent on
execute pathogen#infect()

let mapleader=","

" ---------------------------------------------------------------------
" Line numbering
set relativenumber
set number

" ---------------------------------------------------------------------
" Tabs
set tabstop=2
set softtabstop=0 noexpandtab
" set expandtab
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
" Highlight brackets, % to switch between
set matchpairs+=<:>
"
" ---------------------------------------------------------------------
if has("autocmd")
	au BufReadPost *.rkt,*.rktl set filetype=scheme
endif

" ---------------------------------------------------------------------
" Coloring
syntax on
colorscheme lucius
set background=light
" set background=dark
" autocmd VimEnter * hi Normal ctermbg=None
" murphy *torte archery jellybeans lightning *lucius materialbox gruvbox
" scheakur
nnoremap <Leader>c1 :colorscheme torte<cr>
nnoremap <Leader>c2 :colorscheme lucius<cr>
nnoremap <Leader>c3 :colorscheme archery<cr>
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
"nnoremap <Leader>rt :! raco test %:p<CR>
"nnoremap <Leader>ct :! pdflatex %:p<CR>
"nnoremap <Leader>ta :! entrlatex %:p<CR>
"nnoremap <Leader>ta :! ~/Scripts/entrlatex %:p &<CR>
"nnoremap <Leader>cd :! dafny %:p<CR>
nnoremap <Leader>md :! make download<CR>
nnoremap <Leader>mt :! make test<CR>
nnoremap <Leader>mm :! make<CR>
nnoremap <Leader>ol :! eval `opam config env`<CR>
"nnoremap <Leader>pc :! pandoc %:p -t beamer -o out.pdf<CR>
"nnoremap <Leader>pa :! ~/Scripts/entrpandoc %:p &<CR>
nnoremap <Leader>hs :! ghc -o out %:p && ./out<CR>
nnoremap <Leader>jc :! javac %:p && java %:t:r<CR>

autocmd FileType scheme nnoremap <F5> :! raco test %:p<CR>
autocmd FileType tex nnoremap <F5> :! pdflatex %:p && rm *.aux && rm *.log<CR>
autocmd FileType dafny nnoremap <F5> :! dafny %:p<CR>
autocmd FileType markdown nnoremap <F5> :! pandoc %:p -t beamer -o %:t:r.pdf<CR>
autocmd FileType haskell nnoremap <F5> :! ghc -o %:t:r %:p && ./%:t:r && rm *.hi && rm *.o<CR>
autocmd FileType java nnoremap <F5> :! javac %:p && java %:t:r<CR>

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
			set background=light
			let t:is_bg = 2
		else
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
