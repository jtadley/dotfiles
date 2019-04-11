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

" ---------------------------------------------------------------------
" Coloring
syntax on
colorscheme lucius
"set background=light
" set background=dark
autocmd VimEnter * hi Normal ctermbg=None
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
nnoremap <Leader>ct :! pdflatex %:p<CR>
nnoremap <Leader>cd :! dafny %:p<CR>
nnoremap <Leader>md :! make download<CR>
nnoremap <Leader>mt :! make test<CR>
nnoremap <Leader>mm :! make<CR>
nnoremap <Leader>ol :! eval `opam config env`<CR>

" ---------------------------------------------------------------------
" Background toggle
let t:is_bg = 0
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
