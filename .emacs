
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(add-to-list 'load-path "~/.symbiont_tools/configs/" )
;;(set-scroll-bar-mode 'right)
(scroll-bar-mode -1)

;;(require 'yaml-mode)
;;(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; makes yaml-mode work more like python-mode ( enter triggers indent )
(add-hook 'yaml-mode-hook
	  '(lambda ()
	     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; open new files in same frame i am currently in
(setq ns-pop-up-frames nil)

;;reverse-emacs
;;(add-hook 'after-init-hook (lambda () (load-theme 'reverse))) ;; has bug with cursor color
(add-hook 'after-init-hook (lambda () (load-theme 'solarized-dark)))



;; ============ end melpa ==============

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files


(global-set-key (kbd "<home>") 'move-beginning-of-buffer)

(global-set-key [(control ?x) (?x)] 'ff-find-other-file )

(global-linum-mode 1)

;C-x is hard to hit on dvorak
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
;(global-set-key (kbd "C-c g") 'goto-line)

(global-set-key (kbd "C-c q") 'query-replace)
(global-set-key (kbd "C-c r") 'query-replace-regexp)
(global-set-key (kbd "C-c w") 'whitespace-cleanup)


(global-set-key (kbd "C-x RET") 'revert-buffer)
(global-set-key (kbd "C-x g") 'goto-line)
(global-set-key (kbd "C-x q") 'query-replace)
(global-set-key (kbd "C-x j") 'jira)


;(global-set-key "\C-xc" 'compile)
;(global-set-key "\C-cn" 'next-error)
;(global-set-key "\C-cp" 'previous-error)
;(setq compile-command "scons")

;(global-set-key "\C-x r" 'krefresh)
;(setq krefresh-command "krefresh")

;(add-to-list 'auto-mode-alist '("\\.json\\'" . javascript-mode))

(add-to-list 'default-frame-alist '(height . 85))
(add-to-list 'default-frame-alist '(width . 300))

(setq initial-scratch-message "")

;(grep-compute-defaults)
(setq grep-find-command "find . -type f -print0 | xargs -0 -e grep -inH -e ")
;(setq grep-header-command "find . -type f -name *.h -print0 | xargs -0 -e grep -inH -e ")
(global-set-key (kbd "C-c g") 'grep-find)


(put 'downcase-region 'disabled nil)

(global-set-key (kbd "C-x t") 'terminal-emulator)
;; (global-hl-line-mode 1)

;; (set-face-background 'hl-line "#444")

;(global-linum-mode 1)
;;(set-face-background 'highlight "#F00")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "cd03a600a5f470994ba01dd3d1ff52d5809b59b4a37357fa94ca50a6f7f07473" default)))
 '(package-selected-packages
   (quote
    (projectile helm-projectile solarized-theme yaml-mode magit reverse-theme exec-path-from-shell py-yapf))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:foreground "white")))))

(setq projectile-mode nil )
(global-set-key (kbd "C-c p f") 'projectile-find-file)
(global-set-key (kbd "C-c p g") 'projectile-grep)
