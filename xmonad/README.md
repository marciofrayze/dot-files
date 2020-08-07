# xmonad.hs
Minhas configurações para o window manager xmonad ([~/.xmonad/xmonad.hs](xmonad.hs)).

# Instalando Xmonad (e xmobar) via cabal
sudo apt-get install libxrandr-dev libxss-dev suckless-tools  
cabal update  
cabal install xmonad  
cabal install xmonad-contrib --flags=\"-use_xft\"
cabal install xmobar

# Configurando GDM3 para iniciar no Xmonad
Criar novo arquivo: /usr/share/xsessions/xmonad.desktop  
```
[Desktop Entry]
Name=XMonad
Comment=Lightweight tiling window manager
Exec=xmonad-session
Icon=xmonad.png
Type=XSession
```

Habilitando natural scrolling no trackpad: ```synclient VertScrollDelta=-78```

Mais informações em: https://wiki.haskell.org/Xmonad/Basic_Desktop_Environment_Integration

### Copiando ~/.xmonad/xmonad.hs

**ATENÇÃO**: O COMANDO ABAIXO IRÁ SOBRESCREVER QUALQUER CONFIGURAÇÃO QUE TENHA SIDO FEITA EM SEU *~/.xmonad/xmonad.hs*

curl -LSso ~/.xmonad/xmonad.hs https://raw.githubusercontent.com/mfdavid/dot-files/master/xmonad/xmonad.hs
