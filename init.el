;; Fixes garbage collection issues. makes emacs startup faster.
;; https://github.com/daedreth/UncleDavesEmacs/blob/master/init.el#L2-L16 
(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)

(defvar startup/file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

(defun startup/revert-file-name-handler-alist ()
  (setq file-name-handler-alist startup/file-name-handler-alist))

(defun startup/reset-gc ()
  (setq gc-cons-threshold 16777216
	gc-cons-percentage 0.1))

(add-hook 'emacs-startup-hook 'startup/revert-file-name-handler-alist)
(add-hook 'emacs-startup-hook 'startup/reset-gc)

;; Since this file lives in a dotfiles repository, emacs continuosly asks
;; if it should follow the symlink to the actual file. This prevents the
;; tedious asking part and tells emacs to always follow the symlink
(setq vc-follow-symlinks t)

;; emacs real configuration is on emacs-init.org
(when (file-readable-p "~/.emacs.d/emacs-init.org")
  (org-babel-load-file
    (expand-file-name "emacs-init.org"
                      user-emacs-directory)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("67aec91de254d44ac115e03d0ef16377101f37b0740deff73fcfa9c242e8d512" default)))
 '(package-selected-packages
   (quote
    (ox-twbs flycheck-ledger evil-ledger ledger-mode ## evil-leader nova-theme spaceline use-package projectile async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
