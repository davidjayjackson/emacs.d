
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://stable.melpa.org/packages/"))))
 '(package-selected-packages (quote (##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "C-x g") 'magit-status)
(use package emmet-mode
     :ensure t
     :config
     (add-hook 'clojure-mode-hook 'emmet-mode))
;; Stuff for magit (git) package
(global-set-key (kbd "C-x g") 'magit-status)
;; Code on one side and R console on the other
;(setq display-buffer-alist
;’(("*R"
;(display-buffer-reuse-window display-buffer-pop-up-frame)
;(reusable-frames . 0))))
(setq display-buffer-alist
‘(("*R Dired"
(display-buffer-reuse-window display-buffer-in-side-window)
(side . right)
(slot . -1)
(window-width . 0.33)
(reusable-frames . nil))
("*R"
(display-buffer-reuse-window display-buffer-at-bottom)
(window-width . 0.5)
(reusable-frames . nil))
("*Help"
(display-buffer-reuse-window display-buffer-in-side-window)
(side . right)
(slot . 1)
(window-width . 0.33)
(reusable-frames . nil))))
