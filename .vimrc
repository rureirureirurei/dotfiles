syntax on
au BufRead,BufNewFile *.py set filetype=python
set number
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ PasteBegin()

function! PasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
