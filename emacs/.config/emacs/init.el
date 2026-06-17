(setq inhibit-startup-message t)

(display-time-mode 1)   
(display-battery-mode 1)

(global-display-line-numbers-mode 1)
(setq display-time-default-load-average nil)

(tool-bar-mode -1)
(scroll-bar-mode -1)

(load-theme 'modus-vivendi t)
(set-face-attribute 'default nil :height 110)

(keymap-global-set "C-x C-b" 'ibuffer)
