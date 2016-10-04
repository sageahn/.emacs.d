(require 'projectile)
(projectile-global-mode)

(progn
   (add-to-list 'projectile-project-root-files ".svn")
   (add-to-list 'projectile-project-root-files ".git")
   (add-to-list 'projectile-project-root-files ".projectile")
   (add-to-list 'projectile-project-root-files "setup.py")
   (setq projectile-completion-system 'helm)
   (local-set-key (kbd "C-c C-s") 'projectile-grep))
