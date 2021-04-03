;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Amet Alvirde"
      user-mail-address "Amet.Alvirde@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Dank Mono" :size 15 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "Dank Mono" :size 16))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-solarized-dark)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;; (setq display-line-numbers-type t) ; teaching-mode
(setq display-line-numbers-type nil)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;
;; (after! doom-modeline (setq doom-modeline-persp-name t))
(setq doom-modeline-persp-name t)
(map! :leader "e a" #'emmet-expand-yas)

 (defun global-indentation (n)
   (setq c-basic-offset n)
   (setq javascript-indent-level n) ; javascript-mode
   (setq js-indent-level n) ; js-mode
  ; js2-mode, in latest js2-mode, it's alias of js-indent-level
   (setq js2-basic-offset n)
   (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
   (setq web-mode-css-indent-offset n) ; web-mode, css in html file
   (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
   (setq css-indent-offset n) ; css-mode
   )
(global-indentation 2)
