" Inicializando o Pathogen. Utilizado para facilitar a gestão de plugins.
execute pathogen#infect()
syntax on

" Identação de código.
filetype plugin indent on

" Painel lateral à esquerda.
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" Plugin de busca (ctr + p).
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'  

" Exibir número da linha corrente e número de linhas relativas.
set number
set relativenumber

" Tabs e indentação.
set autoindent
set smartindent
set shiftwidth=2
set expandtab
set tabstop=2

" F10 para habilitar ou desabilitar modo paste.
set pastetoggle=<F10> 
