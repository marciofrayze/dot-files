# .emacs
Minhas configurações para o editor emacs ([~/.emacs](emacs)).

### Pacotes instalados via M^x package-install
- elfeed
- neotree
- smooth-scrolling
- projectile
- company-ghc
- haskell-mode
- elm-mode
- web-mode
- flymake-shellcheck
- fill-column-indicator
- flycheck
- flymake-hlint

Para instalar estes pacotes deve-se configurar primeiro o *.emacs* conforme abaixo e em seguida executar *M^x package-refresh-contents*.

### Pacotes instalados via stack
- stack install happy hasktags stylish-haskell present hindent hlint apply-refact ghcid

### Copiando ~/.emacs

**ATENÇÃO**: O COMANDO ABAIXO IRÁ SOBRESCREVER QUALQUER CONFIGURAÇÃO QUE TENHA SIDO FEITA EM SEU *~/.emacs*

curl -LSso ~/.emacs https://raw.githubusercontent.com/mfdavid/dot-files/master/emacs/emacs
