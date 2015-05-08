(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)
      )
  )

(if (and (display-graphic-p) (eq system-type 'windows-nt))
    (let ((fontset "fontset-default"))
      (set-face-font 'default "NanumGothicCoding")
      (set-fontset-font fontset 'hangul '("NanumGothicCoding" . "unicode-bmp"))
      (set-face-attribute 'default nil :font fontset :height 105)
      (add-text-properties (point-min) (point-max) '(line-spacing 0.25 line-height 1.0))
      )
  )

(if (and (display-graphic-p) (eq system-type 'darwin))
    (progn
      (tool-bar-mode -1)
      (setq mac-command-modifier 'meta)
      (setq mac-right-option-modifier 'control)
      )
  )
