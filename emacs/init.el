(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
;; (package-refresh-contents)

;; Download packages
(unless (package-installed-p 'evil)                ;; vim binding support
  (package-install 'evil))
(unless (package-installed-p 'elm-mode)            ;; elm lang support <3
  (package-install 'elm-mode))
(unless (package-installed-p 'lsp-java)            ;; java support
  (package-install 'lsp-java))
(unless (package-installed-p 'undo-fu)             ;; redo for evil
  (package-install 'undo-fu))
(unless (package-installed-p 'magit)               ;; git client
  (package-install 'magit))
(unless (package-installed-p 'git-gutter)          ;; mark changed/uncommited lines  
  (package-install 'git-gutter))
(unless (package-installed-p 'evil-collection)     ;; without this, magit does not play well with evil mode
  (package-install 'evil-collection))
(unless (package-installed-p 'elfeed)              ;; rss client
  (package-install 'elfeed))
(unless (package-installed-p 'neotree)             ;; file tree
  (package-install 'neotree))
(unless (package-installed-p 'markdown-mode)       ;; better markdown support
  (package-install 'markdown-mode))
(unless (package-installed-p 'which-key)           ;; minor mode that displays key bindings
  (package-install 'which-key))
(unless (package-installed-p 'editorconfig)        ;; obey .editorconfig configurations
  (package-install 'editorconfig))
(unless (package-installed-p 'yasnippet-snippets)  ;; template / snippets
  (package-install 'yasnippet-snippets))
(unless (package-installed-p 'yaml-mode)           ;; yaml support
  (package-install 'yaml-mode))
(unless (package-installed-p 'clojure-mode)        ;; clojure support
  (package-install 'clojure-mode))
(unless (package-installed-p 'cider)               ;; better clojure support
  (package-install 'cider))
(unless (package-installed-p 'aggressive-indent)   ;; better clojure support
  (package-install 'aggressive-indent))
(unless (package-installed-p 'rainbow-delimiters)  ;; better clojure support
  (package-install 'rainbow-delimiters))
(unless (package-installed-p 'buffer-move)         ;; better clojure support
  (package-install 'buffer-move))
(unless (package-installed-p 'org-roam)            ;; slip box like features into org mode
  (package-install 'org-roam))
(unless (package-installed-p 'twittering-mode)     ;; twitter support
  (package-install 'twittering-mode))
;; Autocomplete and project management related
(unless (package-installed-p 'projectile)
  (package-install 'projectile))
(unless (package-installed-p 'lsp-mode)
  (package-install 'lsp-mode))
(unless (package-installed-p 'lsp-ui)
  (package-install 'lsp-ui))
;;(unless (package-installed-p 'flycheck)            ;; sintax checking
;;  (package-install 'flycheck))
;;(unless (package-installed-p 'flycheck-haskell)    ;; sintax checking on the fly for haskell
;;  (package-install 'flycheck-haskell))
(unless (package-installed-p 'company)             ;; auto completion
  (package-install 'company))
(unless (package-installed-p 'company-lsp)         ;; auto completion (lsp integration)
  (package-install 'company-lsp))
(unless (package-installed-p 'company-ghci)        ;; auto completion haskell (lsp integration)
  (package-install 'company-ghci))
(unless (package-installed-p 'helm-lsp)
  (package-install 'helm-lsp))
(unless (package-installed-p 'helm-ag)             ;; search using ag
  (package-install 'helm-ag))
(unless (package-installed-p 'helm-projectile)     ;; helm projectile integration (better global grep search)
  (package-install 'helm-projectile))
(unless (package-installed-p 'ivy)                 ;; search for a file (better projectile search)
  (package-install 'ivy))
(unless (package-installed-p 'direnv)              ;; better shell
  (package-install 'direnv))
(unless (package-installed-p 'better-defaults)     ;; some defaults (suggestion from clojure docs)
  (package-install 'better-defaults))

;; Enable evil and evil collection
(setq evil-want-keybinding nil)
(setq evil-undo-system 'undo-fu)
(require 'evil)
(evil-mode 1)
(when (require 'evil-collection nil t)
  (evil-collection-init))

;; Custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-enabled-themes '(tango-dark))
 '(git-gutter:update-interval 3)
 '(helm-minibuffer-history-key "M-p")
 '(inhibit-startup-screen t)
 '(markdown-command "/usr/local/bin/pandoc")
 '(menu-bar-mode nil)
 '(package-selected-packages '(xah-elisp-mode ## magit evil))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "gray21" :foreground "light gray")))))

;; Always follow symlinks
(setq vc-follow-symlinks t)

;; Configuring general lsp support
(require 'lsp-mode)
(setq lsp-enable-links nil)
(setq lsp-enable-file-watchers t)
(setq lsp-file-watch-threshold 10000)
(global-set-key (kbd "C-c l a") 'lsp-execute-code-action)
(global-set-key (kbd "C-c l i") 'lsp-organize-imports)
(global-set-key (kbd "C-c l r") 'lsp-find-references)

;; Configuring helm
(global-set-key (kbd "C-c h s") 'helm-projectile-ag)

;; Configuring lsp Elm
(add-hook 'elm-mode-hook 'elm-format-on-save-mode)
(add-hook 'elm-mode-hook #'lsp)

;; Configuring lsp Java
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)
(add-hook 'java-mode-hook
	  '(lambda ()
	     (add-hook 'after-save-hook 'editorconfig-format-buffer)))
;; 	     (add-hook 'after-save-hook 'lsp-organize-imports)))

;; Configuring lsp haskell
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-mode-hook 'direnv-update-environment)
(add-hook 'haskell-literate-mode-hook #'lsp)
;; (add-hook 'haskell-mode-hook 'company-mode)
;; (setq haskell-process-type 'stack-ghci) 

;; Enbales which-key (https://github.com/justbur/emacs-which-key)
(which-key-mode)

;; Enable git gutter
(global-git-gutter-mode t)

;; Neotree config
(global-set-key (kbd "C-x t") 'neotree-toggle)
(setq neo-window-width 55)

;; Show line number
;; (global-display-line-numbers-mode)

;; Projectile and ivy config
(require 'projectile)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode t)
(ivy-mode t)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; Put backups in a different directory
(setq backup-directory-alist `(("." . "~/emacs/.saves")))
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;; Do not create lockfiles (#file#)
(setq create-lockfiles nil)

;; Code formating
(editorconfig-mode 1)

;; Enable auto complete
(add-hook 'after-init-hook 'global-company-mode)

;; RSS Feeds
(setq elfeed-feeds
      '("http://feeds.macrumors.com/MacRumors-All"
        "https://www.davefarley.net/?feed=rss"
        "https://thoughtworks.libsyn.com/rss"
        "https://www.martinfowler.com/bliki/bliki.atom"
        "https://feed.infoq.com"
        "https://architectelevator.com/feed.xml"
        "https://segunda.tech/rss.xml"))

;; clojure
(add-hook 'clojure-mode-hook 'turn-on-eldoc-mode)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)
(add-hook 'clojure-mode-hook #'subword-mode)

;; Parenteses with colors
(show-paren-mode 1)  
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Move window buffers around
(global-set-key (kbd "C-c C-m C-k") 'buf-move-up)
(global-set-key (kbd "C-c C-m C-j") 'buf-move-down)
(global-set-key (kbd "C-c C-m C-h") 'buf-move-left)
(global-set-key (kbd "C-c C-m C-l") 'buf-move-right)

;; Select window by number
(define-key evil-normal-state-map ",1" 'select-window-1)
(define-key evil-normal-state-map ",2" 'select-window-2)
(define-key evil-normal-state-map ",3" 'select-window-3)
(define-key evil-normal-state-map ",4" 'select-window-4)

;; org-roam
(unless (file-exists-p "~/org-roam")
  (setq org-roam-directory "~/org-roam"))
(add-hook 'after-init-hook 'org-roam-mode)
