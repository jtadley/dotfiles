(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
										(not (gnutls-available-p))))
			 (proto (if no-ssl "http" "https")))
	(add-to-list 'package-archives
							 (cons "melpa" (concat proto "://melpa.org/packages/")) t ))

(package-initialize)

;; color theme
(require 'vim-colors-theme)


;; line numbers
(linum-mode)
(require 'linum-relative)
(linum-relative-global-mode t)
(setq linum-relative-current-symbol "")


;; cursor line
(global-hl-line-mode t)

;; scrolling
(setq scroll-margin 10)
(setq scroll-step 1)

;; evil-mode
(require 'evil)
(evil-mode t)

;; --- language modes ---
(add-to-list 'auto-mode-alist '("\\.v$" . coq-mode))
(add-to-list 'auto-mode-alist '("\\.rkt$" . racket-mode))

;; --- Coq ---
(add-hook 'proof-mode-hook
	(lambda ()
		(load-theme 'sanityinc-tomorrow-night t)))

;; --- Racket ---
(require 'racket-mode)
(add-hook 'racket-mode-hook
	(lambda ()
		(require 'charcoal-black-theme)
		(autoload 'paredit-mode "paredit"
			"Minor mode for pseudo-structurally editing Lisp code."
			t)
		(paredit-mode 1)
		(define-key racket-mode-map (kbd "C-c r") 'racket-run)))
