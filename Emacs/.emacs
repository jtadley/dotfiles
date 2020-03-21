;; M-: (byte-recompile-directory package-user-dir nil 'force)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
	(require 'package)
	(package-initialize)
	(add-to-list
		'package-archives
		;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
		'("melpa" . "http://melpa.milkbox.net/packages/")
		t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7f9dc0c7bc8e5b4a1b9904359ee449cac91fd89dde6aca7a45e4ed2e4985664c" "e491d84f66d5d540e8459e9af173789d6b70e42a57b2a537823441b6921b39bd" "72559f34f255a17b7055687c1593ae1dbbd3c5b61b56d0ca96f9468ca228b96c" "2296db63b1de14e65390d0ded8e2b5df4b9e4186f3251af56807026542a58201" "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" default)))
 '(package-selected-packages
   (quote
    (jbeans-theme warm-night-theme suscolors-theme gruvbox-theme seoul256-theme evil-goggles evil-search-highlight-persist paredit racket-mode linum-relative))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; -------------------
;; Menu/Tool Bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; ------------------------------------------------------------------------------
;; Font
(set-face-attribute 'default	nil
										:height		130
										:weight		'normal
										:width		'normal)
(set-fontset-font "fontset-default" 'unicode "Symbola")

;; ------------------------------------------------------------------------------
;; Color scheme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)
;(load-theme 'gruvbox t)
;(load-theme 'suscolors t)

;; ------------------------------------------------------------------------------
;; Evil mode
(add-to-list 'load-path "~/.emacs.d/evil")
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; ------------------------------------------------------------------------------
;; Relative line numbers
(setq-default display-line-numbers 'relative
	      display-line-numbers-current-absolute t)

;; ------------------------------------------------------------------------------
;; Display above / below cursor lines
(setq scroll-step 1)
(setq scroll-margin 10)

;; ------------------------------------------------------------------------------
;; Highlight matching parenthesis
(show-paren-mode 1)
(setq show-paren-delay 0)

;; ------------------------------------------------------------------------------
;; Highlight matching parenthesis
(require 'highlight)
(require 'evil-search-highlight-persist)
;(global-evil-search-highlight-persist t)

;; ------------------------------------------------------------------------------
;; Highlight matching parenthesis
(global-hl-line-mode +1)
;(setq hl-line-face "white")

;; ------------------------------------------------------------------------------
;; Highlight matching parenthesis
(evil-goggles-mode)
(setq evil-goggles-duration 0.200)
;; list of all on/off variables, their default value is `t`:
(setq evil-goggles-enable-delete nil)
(setq evil-goggles-enable-change nil)
(setq evil-goggles-enable-indent nil)
;; evil-goggles-enable-yank
(setq evil-goggles-enable-join nil)
(setq evil-goggles-enable-fill-and-move nil)
(setq evil-goggles-enable-paste nil)
(setq evil-goggles-enable-shift nil)
(setq evil-goggles-enable-surround nil)
(setq evil-goggles-enable-commentary nil)
(setq evil-goggles-enable-nerd-commenter nil)
(setq evil-goggles-enable-replace-with-register nil)
(setq evil-goggles-enable-set-marker nil)
(setq evil-goggles-enable-undo nil)
(setq evil-goggles-enable-redo nil)
(setq evil-goggles-enable-record-macro nil)

;; ------------------------------------------------------------------------------
;; Vim keybindings for Normal mode
(evil-define-key 'normal 'global
  ;; Movement default
  "j" "gj"
  "k" "gk"
  "H" "^"
  "L" "$"
  ;; Command default
  ":" "q:i"
  ;; Search default
  "/" "q/i"
  )

;; ------------------------------------------------------------------------------
;; Racket
(add-hook 'racket-mode-hook
	  (lambda ()
	    (define-key racket-mode-map (kbd "<f5>") 'racket-run)))

;; Faster repl startup
; (racket-mode-start-faster)

;; Unicode auto-replace
(add-hook 'racket-mode-hook #'racket-unicode-input-method-enable)
(add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)

;; Auto-aligning in same column
;(racket-align 1)

;; Highlight parens
(defface hi-pink
  '((((background dark)) (:background "NONE" :foreground "#ff66d9"))
    (t (:background "NONE")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(add-hook 'racket-mode-hook '(lambda ()
			       (highlight-regexp "[(){}]" 'hi-pink)
			       ;(highlight-regexp "\[" 'hi-pink)
			       ;(highlight-regexp "\]" 'hi-pink)
			       ))

;; ------------------------------------------------------------------------------
;; Paredit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'racket-mode-hook           #'enable-paredit-mode)
(add-hook 'racket-repl-mode-hook      #'enable-paredit-mode)


;; ------------------------------------------------------------------------------
;; Agda
(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))
