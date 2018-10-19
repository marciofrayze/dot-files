# .vimrc
Minhas configurações para o editor vim ([~/.vimrc](vimrc)).

Plugins gerenciados pelo [Pathogen](https://github.com/tpope/vim-pathogen).

# Plugins utilizados
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [typescript-vim](https://github.com/leafgarland/typescript-vim)
- [vim-javacomplete2](https://github.com/artur-shaik/vim-javacomplete2)
- [vim-javascript](https://github.com/pangloss/vim-javascript)
- [vim-vue](https://github.com/posva/vim-vue)
- [ctrlp.vim](https://github.com/kien/ctrlp.vim)
- [emmet-vim](https://github.com/mattn/emmet-vim)

### Instalando todas as dependências

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim  
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree  
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim  
git clone https://github.com/artur-shaik/vim-javacomplete2.git ~/.vim/bundle/vim-javacomplete2  
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript  
git clone https://github.com/posva/vim-vue.git ~/.vim/bundle/vim-vue  
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim  
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim  

### Atualizando todas as dependências
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim  
cd ~/.vim/bundle/nerdtree && git pull  
cd ~/.vim/bundle/typescript-vim && git pull  
cd ~/.vim/bundle/vim-javacomplete2 && git pull  
cd ~/.vim/bundle/vim-javascript && git pull  
cd ~/.vim/bundle/vim-vue && git pull  
cd ~/.vim/bundle/ctrlp.vim && git pull  
cd ~/.vim/bundle/emmet-vim && git pull  
