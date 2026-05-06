" === Mcedit-like Vim: F3=Copy, F6=Cut (Move), F5=Paste from last yank/delete ===

set nocompatible
set mouse=a
set number
set showcmd
set laststatus=2
set noerrorbells
set t_vb=
set backspace=indent,eol,start
set timeoutlen=500

filetype plugin indent on
syntax on

" === Start in Insert mode ===
autocmd VimEnter * startinsert
autocmd BufEnter * if mode() != 'i' | startinsert | endif

" === Startup hint ===
au VimEnter * echo "Mcedit: F3=Copy, F6=Cut, F5=Paste, F10=Quit"

" === Mappings ===

" F1 - Undo
inoremap <F1> <Esc>:call FastUndo()<CR>
nnoremap <F1> :call FastUndo()<CR>
vnoremap <F1> <Esc>:call FastUndo()<CR>

function! FastUndo()
    silent! undo
    startinsert
endfunction

" F2 - Save
inoremap <F2> <Esc>:w<CR>a
nnoremap <F2> :w<CR>
vnoremap <F2> <Esc>:w<CR>

" F3 - Select and copy on second press
inoremap <F3> <Esc>v
nnoremap <F3> v
vnoremap <F3> y<Esc>i

" F4 - Replace
inoremap <F4> <Esc>:%s/
nnoremap <F4> :%s/
vnoremap <F4> <Esc>:%s/

" F5 - Paste (last copied or cut)
inoremap <F5> <Esc>p<Esc>i
nnoremap <F5> p<Esc>i
vnoremap <F5> <Esc>p<Esc>i

" F6 - Cut: cut block
vnoremap <F6> d<Esc>i
" Does not work in Insert mode — safe

" F7 - Search
inoremap <F7> <Esc>/
nnoremap <F7> /
vnoremap <F7> <Esc>/

" F8 - Delete line (doesn't save to buffer!)
inoremap <F8> <Esc>dd<Esc>i
nnoremap <F8> dd
vnoremap <F8> d<Esc>i

" F10 - Quit
inoremap <F10> <Esc>:q<CR>
nnoremap <F10> :q<CR>
vnoremap <F10> :q<CR>

" Additional keys
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-s> :w<CR>
inoremap <C-q> <Esc>:q<CR>
nnoremap <C-q> :q<CR>
inoremap <C-f> <Esc>/
nnoremap <C-f> /

" === Status Line ===
set statusline=[F1]Undo\ [F2]Save\ [F3]Copy\ [F4]Replace\ [F5]Paste\ [F6]Cut\ [F7]Search\ [F8]Delete\ [F10]Quit\ \|\ %f%=%l,%c
