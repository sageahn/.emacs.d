
(use-package yasnippet
  :ensure t
  :config (progn
	    (setq yas-snippet-dirs (concat user-emacs-directory "snippets"))
	    (yas-load-directory yas-snippet-dirs)
	    (yas-global-mode 1)))
