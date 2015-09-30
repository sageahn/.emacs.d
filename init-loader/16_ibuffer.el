(add-hook 'ibuffer-mode-hook
	  (lambda ()
	    (ibuffer-vc-set-filter-groups-by-vc-root)
	    (unless (eq ibuffer-sorting-mode 'alphabetic)
	      (ibuffer-do-sort-by-alphabetic))))

(setq ibuffer-show-empty-filter-groups nil)

(global-hl-line-mode 1)
(make-variable-buffer-local 'global-hl-line-mode)

