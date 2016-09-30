(defun toracle-setup-python ()
  (setq indent-tabs-mode nil)
  (flymake-mode -1)
  (setq flycheck-pylintrc
	(concat (file-name-as-directory (concat user-emacs-directory "init-loader"))
		"pylintrc"))
  (when (and (boundp 'pyvenv-virtual-env)
             (not (null pyvenv-virtual-env)))
    (setq flycheck-python-pylint-executable
          (concat pyvenv-virtual-env "bin/pylint")))
  (flycheck-select-checker 'python-pylint)
  (jedi:setup)
  (setq jedi:complete-on-dot t)
  (company-mode t)
  (add-to-list 'company-backends 'company-jedi)
  (local-set-key (kbd "M-.") 'jedi:goto-definition)
  (local-set-key (kbd "M-*") 'jedi:goto-definition-pop-marker)
  (local-set-key (kbd "C-c C-d") 'jedi:show-doc)
  (add-to-list 'grep-find-ignored-directories "build")
  )

(add-hook 'python-mode-hook 'toracle-setup-python)