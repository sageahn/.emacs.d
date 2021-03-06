(use-package web-mode
  :ensure t
  :config (progn
	    (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
	    (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
	    (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
	    (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
	    (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
	    (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
	    (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
	    (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
	    (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
	    (add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-enable-engine-detection t)
  (local-set-key (kbd "C-c /")  'web-mode-element-close)
  )

(add-hook 'web-mode-hook  'my-web-mode-hook)
(add-hook 'css-mode-hook  'my-web-mode-hook)

(use-package emmet-mode
  :ensure t)

(use-package markdown-mode
  :ensure t)

(use-package yaml-mode
  :ensure t)

(use-package adoc-mode
  :ensure t)

(use-package creole
  :ensure t)

(use-package scss-mode
  :ensure t)

(use-package impatient-mode
  :ensure t)

(use-package restclient
  :ensure t)
