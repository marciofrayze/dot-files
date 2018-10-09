" Inicializando o Pathogen. Utilizado para facilitar a gestão de plugins.
execute pathogen#infect()

" Highlighting e cores
syntax on
color darkblue

" Recarrega caso arquivo tenha sido alterado fora do vim.
set autoread

" Desabilita as setas (útil para perder o hábito de usa-las).
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Deixa 7 linhas acima e abaixo quando estiver movendo com j e k.
set so=7

" Configurações do wildmenu (auto completar o tab de forma mais eficiência/visual).
set wildmenu
set wildmode=longest:list,full

" Usar por padrão o clipboard para copiar de texto.
if has("clipboard")
  set clipboard=unnamed

  if has("unnamedplus") " Suporte ao X11. 
    set clipboard+=unnamedplus
  endif
endif

" Desabilitando criação de arquivos de swap.
set noswapfile

" Identação de código.
filetype plugin indent on

" Se string de busca fora toda minuscusa, faça uma busca case insensitive.
set smartcase

" Melhora regex.
set magic

" Exibe caracter que faz 'match' com o caracter selecionado atualmente.
set showmatch
set mat=2

" Desabilita sons em caso de erros.
set belloff=all

" Destaca resultado de busca.
set hlsearch

" Por padrão usar utf-8 e unix.
set encoding=utf8
set ffs=unix,dos,mac

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
set ruler

" Tabs e indentação.
set autoindent
set smartindent
set shiftwidth=2
set expandtab
set tabstop=2

" F10 para habilitar ou desabilitar modo paste.
set pastetoggle=<F10> 

" Configurando Java (plugin ~/.vim/bundle/javacomplete2).
autocmd filetype java setlocal omnifunc=javacomplete#complete
nmap <f4> <plug>(javacomplete-imports-addsmart)
imap <f4> <plug>(javacomplete-imports-addsmart)
nmap <f5> <plug>(javacomplete-imports-add)
imap <f5> <plug>(javacomplete-imports-add)
nmap <f6> <plug>(javacomplete-imports-addmissing)
imap <f6> <plug>(javacomplete-imports-addmissing)
nmap <f7> <plug>(javacomplete-imports-removeunused)
imap <f7> <plug>(javacomplete-imports-removeunused)

" Configurando vim-airline (tabs).
let g:airline#extensions#tabline#enabled = 1
