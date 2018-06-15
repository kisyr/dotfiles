" Force utf-8
set fileencodings=ucs-bom,utf-8,latin1
set encoding=utf-8

" Visual
syntax on
set background=dark
set t_Co=256
colorscheme monokai
set number
set wrap
set listchars=trail:·,eol:¬,tab:▸\  
set list
set tags=.tags;/

" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
let g:netrw_altv = 1
"let g:netrw_winsize = 25
augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
augroup END

" allow toggling between local and default mode
function! TabToggle()
  if &expandtab
    set shiftwidth=2
    set tabstop=2
    set noexpandtab
  else
    set shiftwidth=4
    set tabstop=4
    set expandtab
  endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z

" toggle to default mode
set expandtab
execute TabToggle()

