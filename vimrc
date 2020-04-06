set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set hlsearch
set incsearch
nnoremap zn :set number<CR>
nnoremap znn :set nonu<CR>
nnoremap zp :set paste<CR>
nnoremap zpp :set nopaste<CR>
nnoremap rm :nohlsearch<CR>
imap <F4> <C-v><tab>
set pastetoggle=<F3>
nnoremap : ;
nnoremap ; :
highlight ExtraWhitespace ctermbg=red guibg=yellow
match ExtraWhitespace /\s\+$/
set list
set listchars=tab:T>
inoremap jk <Esc>
nnoremap <C-up> :tabr<cr>
nnoremap <C-down> :tabl<cr>
nnoremap <C-left> :tabp<CR>
nnoremap <C-right> :tabn<CR>
nnoremap <C-t> :tabnew <bar> :Ex<CR>
nnoremap <C-w> :q!<CR>
nnoremap <C-e> :Ex<CR>
nnoremap <C-b> :Rex<CR>
