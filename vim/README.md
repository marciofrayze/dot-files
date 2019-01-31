# .vimrc
Minhas configurações para o editor vim ([~/.vimrc](vimrc)).

Plugins gerenciados pelo [Pathogen](https://github.com/tpope/vim-pathogen).

# Plugins utilizados
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [typescript-vim](https://github.com/leafgarland/typescript-vim)
- [vim-javascript](https://github.com/pangloss/vim-javascript)
- [vim-vue](https://github.com/posva/vim-vue)
- [ctrlp.vim](https://github.com/kien/ctrlp.vim)
- [emmet-vim](https://github.com/mattn/emmet-vim)

### Instalando ou atualizando todas as dependências

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim  
git -C ~/.vim/bundle/nerdtree pull || git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree  
git -C ~/.vim/bundle/typescript-vim pull || git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim  
git -C ~/.vim/bundle/vim-javascript pull || git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript  
git -C ~/.vim/bundle/vim-vue pull || git clone https://github.com/posva/vim-vue.git ~/.vim/bundle/vim-vue  
git -C ~/.vim/bundle/ctrlp.vim pull || git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim  
git -C ~/.vim/bundle/emmet-vim pull || git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim  

### Copiando ~/.vimrc

**ATENÇÃO**: O COMANDO ABAIXO IRÁ SOBRESCREVER QUALQUER CONFIGURAÇÃO QUE TENHA SIDO FEITA EM SEU *~/.vimrc*

curl -LSso ~/.vimrc https://raw.githubusercontent.com/mfdavid/dot-files/master/vim/vimrc
