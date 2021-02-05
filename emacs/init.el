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
;; Autocomplete and project management related
(unless (package-installed-p 'projectile)
  (package-install 'projectile))
(unless (package-installed-p 'lsp-mode)
  (package-install 'lsp-mode))
(unless (package-installed-p 'lsp-ui)
  (package-install 'lsp-ui))
(unless (package-installed-p 'flycheck)        ;; sintax checking
  (package-install 'flycheck))
(unless (package-installed-p 'company)         ;; auto completion
  (package-install 'company))
(unless (package-installed-p 'helm-lsp)
  (package-install 'helm-lsp))
(unless (package-installed-p 'helm-ag)         ;; search using ag
  (package-install 'helm-ag))
(unless (package-installed-p 'ivy)             ;; search for a file (better projectile search)
  (package-install 'ivy))

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
 '(custom-enabled-themes (quote (tango-dark)))
 '(helm-minibuffer-history-key "M-p")
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (xah-elisp-mode ## lsp-javacomp magit evil)))
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

;; Configuring lsp Elm
(add-hook 'elm-mode-hook 'elm-format-on-save-mode)
(add-hook 'elm-mode-hook #'lsp)

;; Configuring lsp Java
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)
;; (add-hook 'after-save-hook 'editorconfig-format-buffer)
(add-hook 'java-mode-hook
	  '(lambda ()
	     (add-hook 'after-save-hook 'editorconfig-format-buffer)
	     (add-hook 'after-save-hook 'lsp-organize-imports)))

;; Enbales which-key (https://github.com/justbur/emacs-which-key)
(which-key-mode)

;; Neotree shortcut
(global-set-key (kbd "C-x t") 'neotree-toggle)

;; Show line number
(global-display-line-numbers-mode)

;; Projectile and ivy setup
(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; Put backups on /tmp and disable lock files
(setq backup-directory-alist '((".*" . "/tmp")))
(setq create-lockfiles nil) 

;; Code formating
(editorconfig-mode 1)

;; RSS Feeds
(setq elfeed-feeds
      '("http://feeds.macrumors.com/MacRumors-All"
        "https://www.davefarley.net/?feed=rss"
        "https://thoughtworks.libsyn.com/rss"
        "https://www.martinfowler.com/bliki/bliki.atom"
        "https://feed.infoq.com"
        "https://architectelevator.com/feed.xml"
        "https://segunda.tech/rss.xml"))
