# .vimrc
Minhas configurações para o editor vim ([~/.vimrc](vimrc)).

Plugins gerenciados pelo [vim-plug](https://github.com/junegunn/vim-plug).

# Instalando/atualizando plugins
Após configurar o arquivo ~/.vimrs conforme exemplo, entre no `vim` e execute o comando `:PlugInstall` 

### Copiando ~/.vimrc

**ATENÇÃO**: O COMANDO ABAIXO IRÁ SOBRESCREVER QUALQUER CONFIGURAÇÃO QUE TENHA SIDO FEITA EM SEU *~/.vimrc*

curl -LSso ~/.vimrc https://raw.githubusercontent.com/marciofrayze/dot-files/master/vim/vimrc

### Elm

Plugins para utilizar Elm consideram que você tenha instalado:  
No Linux: `npm install -g elm elm-test elm-oracle elm-format @elm-tooling/elm-language-server`  
No FreeBSD:  
`pkg install hs-elm-format`  
`npm install -g elm elm-test elm-oracle @elm-tooling/elm-language-server`

### Java

Além da JDK instalada e configurada, é necessário ter baixado o [Eclipse](https://eclipse.org) e o [eclimd](http://eclim.org/install.html#installing-upgrading) e iniciado o servidor ```eclimd```.

Além disso, é necessário ter o coc-java instalado, executando: `:CocInstall coc-java`.

Então importe o projeto (caso ele já seja um projeto eclipse) com: ```:ProjectImport <PATH_COMPLETO>```  
Ou crie um novo projeto eclipse com: ```:ProjectCreate <PATH_COMPLETO> -n java```

Para corrigir um erro no código (faltando throws ou faltando implementar um método): ```:JavaCorrect```   
Para criar uma nova classe no mesmo pacote do arquivo sendo editado atualmente: ```:JavaNew class <NomeDaClasse>```   

Caso receba o erro __*vim coc the java server crashed 5 times*__, limpe o workspace com o comando:
```:CocCommand java.clean.workspace```

### Flutter

Execute: ```:CocInstall coc-flutter```

### Coc Config

Minhas configurações do coc config (Java, Elm, etc):

Execute ```:CocConfig``` e cole:

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
    },
    "dart": {
      "command": "dart_language_server",
      "args": [],
      "trace.server": "verbose",
      "filetypes": ["dart"],
      "initializationOptions": {},
      "settings": {
        "dart": {
          "validation": {},
          "completion": {}
        }
      }
    }
  },
  "coc.preferences.formatOnSaveFiletypes": ["elm", "dart", "java"],
  "explorer.icon.enableNerdfont": true,
  "java.import.gradle.enabled": true,
  "java.import.maven.enabled": true,
  "java.autobuild.enabled": true,
  "java.jdt.ls.vmargs": "-Dfile.encoding=UTF-8"
}

```

# Compilando vim a partir do fonte (raspberry pi)

`git clone https://github.com/vim/vim.git`  
Instalando dependências:  
`sudo apt-get install libperl-dev`  
e provavelmente várias outras que eu não documentei... desculpe :)  
Limpando caso tenha compilado previamente: `make distclean`  
Configurando:  
`./configure --with-features=huge --enable-multibyte --enable-gui=auto --enable-gtk2-check --enable-gtk3-check --enable-gnome-check --enable-cscope                 --enable-largefile --enable-pythoninterp=dynamic --with-python-config-dir=$(python-config --configdir)  --enable-python3interp=dynamic --with-python3-config-dir=$(python3-config --configdir) --enable-perlinterp --enable-rubyinterp=dynamic --enable-luainterp=dynamic --with-luajit --with-x --with-compiledby="Marcio Frayze David <marcio@segunda.tech>" --enable-fail-if-missing
`  
Compilando:  `sudo make install`  

Divirta-se!
