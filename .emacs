;; ==== Basic Minimal configuration for emacs ====
;; ==== author : julien Stuyck


;; ------ UTF8 -------
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; ------- PHP --------

;; ----- Python -------

;; ----- Nginx --------
(load "~/.emacs.d/nginx-mode.el")
(require 'nginx-mode)
(add-to-list 'auto-mode-alist '("/nginx/sites-\\(?:available\\|enabled\\)/" . nginx-mode))

;; ----- Options -------
(custom-set-variables '(pc-selection-mode t nil (pc-select))) ; select with shift
(require 'paren)                      ; show matching bracket
(show-paren-mode)
(setq visible-bell t)                 ; disable annoying beep
(set-background-color "Black")        ; black background
(set-foreground-color "White")        ; white foreground
(delete-trailing-whitespace)          ; delete trailing whitespaces
(setq inhibit-startup-message t)      ; don't show the GNU splash screen
(menu-bar-mode -1)                    ; no menu bar
(setq frame-title-format "<[ %b ]>")  ; titlebar shows buffer's name
(global-font-lock-mode t)             ; syntax highlighting
(setq font-lock-maximum-decoration t) ; maximum decoration for all modes
(show-paren-mode t)                   ; show opposing paren while hovering
(setq scroll-step 1)                  ; smooth scrolling
(delete-selection-mode t)             ; typing removes highlighted text
(line-number-mode t)                  ; display line number in modeline
(column-number-mode t)                ; display column number in modeline
(setq display-time-24hr-format t)     ; european 24h format
(display-time)                        ; display time in modeline
(auto-compression-mode t)             ; open compressed files
(fset 'yes-or-no-p 'y-or-n-p)         ; y or n will do
(setq default-major-mode 'text-mode)  ; change default major mode to text
(setq ring-bell-function 'ignore)     ; turn the alarm totally off
(setq make-backup-files nil)          ; no backupfile
(setq delete-auto-save-files t)       ; delete unnecessary autosave files
(setq delete-old-versions t)          ; delete oldversion file
(setq next-line-add-newlines nil)     ; prevents new line after eof
(setq default_indice_empty_lines t)   ; show lines at end of file
(setq default-indicate-empty-lines t) ; show the end of the file
(setq-default c-basic-offset 4)       ; basic indent size
(setq default-tab-width 4)            ; basic indent size
;; if we are on a graphic mode
(when (display-graphic-p)
  (progn
    (scroll-bar-mode -1)                ; no scroll bar
    (menu-bar-mode -1)                  ; no menu bar
    (tool-bar-mode -1)                  ; no tool bar
    (mouse-wheel-mode t)))              ; enable mouse wheel

;; Shebangs

(defun insert-shebang (bin)
  (interactive "sBin: ")
  (save-excursion
    (goto-char (point-min))
    (insert "#!" bin "\n\n")))

(defun insert-shebang-if-empty (bin)
  (when (buffer-empty-p)
    (insert-shebang bin)))

