# xmonad.hs
Minhas configurações para o window manager xmonad ([~/.xmonad/xmonad.hs](xmonad.hs)).

# Instalando Xmonad via cabal
cabal update  
cabal install xmonad  
cabal install xmonad-contrib (opcional)

# Configurando GDM3 para iniciar no Xmonad
Criar novo arquivo: /usr/share/xsessions/xmonad.desktop  
```
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Xmonad
Exec=/home/30723401888/.cabal/bin/xmonad
NoDisplay=true
X-GNOME-WMName=Xmonad
X-GNOME-Autostart-Phase=WindowManager
X-GNOME-Provides=windowmanager
X-GNOME-Autostart-Notify=false
```

Mais informações em: https://wiki.haskell.org/Xmonad/Basic_Desktop_Environment_Integration

### Copiando ~/.xmonad/xmonad.hs

**ATENÇÃO**: O COMANDO ABAIXO IRÁ SOBRESCREVER QUALQUER CONFIGURAÇÃO QUE TENHA SIDO FEITA EM SEU *~/.xmonad/xmonad.hs*

curl -LSso ~/.xmonad/xmonad.hs https://raw.githubusercontent.com/mfdavid/dot-files/master/xmonad/xmonad.hs
