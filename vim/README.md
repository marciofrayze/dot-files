# .vimrc
Minhas configurações para o editor vim ([~/.vimrc](vimrc)).

Plugins gerenciados pelo [vim-plug](https://github.com/junegunn/vim-plug).

# Instalando/atualizando plugins
Após configurar o arquivo ~/.vimrs conforme exemplo, entre no `vim` e execute o comando `:PlugInstall` 

### Copiando ~/.vimrc

**ATENÇÃO**: O COMANDO ABAIXO IRÁ SOBRESCREVER QUALQUER CONFIGURAÇÃO QUE TENHA SIDO FEITA EM SEU *~/.vimrc*

curl -LSso ~/.vimrc https://raw.githubusercontent.com/mfdavid/dot-files/master/vim/vimrc

### Elm

Plugin do Elm considera que tenha instalado:  
`npm install -g elm elm-test elm-oracle elm-format @elm-tooling/elm-language-server`

Run ```:CocConfig``` then paste:

```
{
  "languageserver": {
    "elmLS": {
      "command": "elm-language-server",
      "filetypes": ["elm"],
      "rootPatterns": ["elm.json"],
      "initializationOptions": {
        "elmAnalyseTrigger": "change"
      }
    }
  }
}
```

### Java

Além da JDK instalada e configurada, é necessário ter baixado o [Eclipse](https://eclipse.org) e o [eclimd](http://eclim.org/install.html#installing-upgrading) e iniciado o servidor ```eclimd```iniciado.

Após isso, execute o comando ```:CocInstall coc-java```
