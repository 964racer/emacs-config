;;(load (expand-file-name "C:/Users/k2msm/quicklisp/slime-helper.el"))
;;(when window-system (set-frame-size (selected-frame) 100 60))
(setq inferior-lisp-program "sbcl")
(remove-hook 'lisp-mode-hook 'slime-lisp-mode-hook)
(add-to-list 'load-path "~/.emacs.d/sly-master")
(require 'sly-autoloads)

;; must install company package for this to work (for completion)
(add-hook 'after-init-hook 'global-company-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(haskell-mode projectile cider clojure-mode ample-theme mustang-theme centaur-tabs company doom-themes spacemacs-theme solarized-theme slime))
 '(tool-bar-mode nil)
 '(visible-bell t))

(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)



(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;;(load-theme 'solarized-dark t)
(load-theme 'spacemacs-dark t)
;;(load-theme 'doom-solarized-dark t)
;; (load-theme 'mustang t)
;;(load-theme 'ample-light t)


(require 'centaur-tabs)
(centaur-tabs-mode t)
(global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)



(scroll-bar-mode -1)
(tool-bar-mode -1)
(split-window-horizontally)
;;(split-window-vertically)


(setq default-directory "~/lisp")





(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans" :foundry "PfEd" :slant normal :weight normal :height 113 :width normal)))))
