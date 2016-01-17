;; Author: karlkorp
;; Copyright (C) karlkorp
;; Emacs configuration file
;; E-Mail: lispgod@gmail.com

;; Checking the type of operating system
(defun system-is-mac ()
    (interactive)
    (string-equal system-type "darwin"))

(defun system-is-linux ()
    (interactive)
    (string-equal system-type "gnu/linux"))

(defun system-is-windows ()
    (interactive)
    (string-equal system-type "windows-nt"))

;; Start a server communication subprocess
(unless (system-is-windows)
    (require 'server)
    (unless (server-running-p)
        (server-start)))

;; Buffer Selection
(require 'bs)
;; Some Common Lisp functions and macros
;; can be used in Emacs Lisp programs
(require 'cl)
;; Org-mode is an Emacs mode for note keeping,
;; project planning, TODO lists and authoring
(require 'org)

;; The full name of the user logged in
(setq-default user-full-name "karlkorp")
;; Full mailing address of user
(setq-default user-mail-adress "lispgod@gmail.com")

;; Show a directory (folder) listing that you can use to
;; perform various operations on files and subdirectories in the directory
(require 'dired)
;; To ask for each top-level directory specified by the
;; Dired deletion command, and delete its subdirectories without asking
(setq-default dired-recursive-deletes 'top)

;; Jump to a place in the buffer chosen using a buffer menu or mouse menu
(require 'imenu)
;; Imenu should always rescan the buffers
(setq-default imenu-auto-rescan t)
;; Always use a minibuffer prompt
(setq-default imenu-use-popup-menu nil)

;; Typed text replaces the selection if the selection is active
(delete-selection-mode)

;; Inhibit the startup screen
(setq-default inhibit-startup-screen t)

;; Toggle visualization of matching parens
(show-paren-mode)
;; Time in seconds to delay before showing a matching paren
(setq-default show-paren-delay 0)
;; Style used when showing a matching paren
(setq-default show-paren-style 'parenthesis)

;; Disable GUI components
(tooltip-mode        -1) ;; Display help text in the echo area
(menu-bar-mode       -1) ;; Disable menu bar
(tool-bar-mode       -1) ;; Disable tool bar
(scroll-bar-mode     -1) ;; Disable scroll bar
(blink-cursor-mode   -1) ;; Disable cursor blinking
(global-hl-line-mode -1) ;; Disable line highlighting in all buffers

;; Use short message
(defalias 'yes-or-no-p 'y-or-n-p)
;; Mouse commands don't use dialog to ask questions
(setq-default use-dialog-box nil)

;; Display update isn't paused when input is detected
(setq-default redisplay-dont-pause t)

;; Display a hollow box cursor
(setq-default cursor-type 'hollow)

;; Disable bell
(setq-default ring-bell-function 'ignore)

;; Set the default appearance of fringes on all frames
(fringe-mode '(8 . 0))
;; Visually indicate empty lines after the buffer end
(setq-default indicate-empty-lines t)
;; Visually indicate buffer boundaries and scrolling
(setq-default indicate-buffer-boundaries 'left)

;; Specify frame size
(add-to-list 'default-frame-alist '(width . 120))
(add-to-list 'default-frame-alist '(height . 40))
;; Specify frame font
(when (member "DejaVu Sans Mono" (font-family-list))
    (set-frame-font "DejaVu Sans Mono-11:antialias=natural" nil t))

;; Template for displaying the title bar of visible frames
(setq-default frame-title-format "GNU Emacs: %b")

;; Don't auto-saving
(setq-default auto-save-default nil)
;; Don't make a backup of a file
(setq-default make-backup-files nil)

;; Encodings
(set-language-environment 'UTF-8)
(if (or (system-is-linux) (system-is-mac))
    (progn
        (prefer-coding-system                           'utf-8)
        (set-terminal-coding-system                     'utf-8)
        (set-keyboard-coding-system                'utf-8-unix)
        (set-selection-coding-system                    'utf-8)
        (setq-default coding-system-for-read            'utf-8)
        (setq-default file-name-coding-system           'utf-8)
        (setq-default default-buffer-file-coding-system 'utf-8))
    (progn
        (prefer-coding-system                           'windows-1251)
        (set-terminal-coding-system                     'windows-1251)
        (set-keyboard-coding-system                'windows-1251-unix)
        (set-selection-coding-system                    'windows-1251)
        (setq-default coding-system-for-read            'windows-1251)
        (setq-default file-name-coding-system           'windows-1251)
        (setq-default default-buffer-file-coding-system 'windows-1251)))

;; Toggle display of line numbers in the left margin
(require 'linum)
;; Toggle Limum mode in all buffers
(global-linum-mode)
;; Format used to display numbers
(setq-default linum-format " %d ")

;; Toggle line number display in the mode line
(line-number-mode)
;; Toggle column number display in the mode line
(column-number-mode)

;; Toggle display of time, load level, and mail flag in mode lines
(display-time-mode)

;; Toggle buffer size display in the mode line
(size-indication-mode)

;; Toggle visual line based editing
(global-visual-line-mode)
;; Use word-wrapping for continuation lines
(setq-default word-wrap t)
;; Column beyond which automatic line-wrapping should happen
(setq-default fill-column 81)

;; IDO mode
(require 'ido)
(ido-mode t)
;; Toggle use of IDO for all buffer/file reading
(ido-everywhere)
;; IDO will do flexible string matching
(setq-default ido-enable-flex-matching t)

;; Toggle incremental minibuffer completion
(icomplete-mode)

;; Operate on buffers much in the same manner as Dired
(require 'ibuffer)
(defalias 'list-buffers 'ibuffer)

;; Toggle Font-Lock mode in all buffers
(require 'font-lock)
(global-font-lock-mode)
;; Use the maximum decoration available
(setq-default font-lock-maximum-decoration t)

;; Electric mode
(electric-pair-mode   -1) ;; Disable automatic parens pairing
(electric-indent-mode -1) ;; Disable on-the-fly reindentation

;; Use CPerl mode
(defalias 'perl-mode 'cperl-mode)

;; Indentation can't insert tabs
(setq-default indent-tabs-mode nil)

;; Indentation steps
(setq-default tab-width            4) ;; Distance between tab stops
(setq-default python-indent        4)
(setq-default c-basic-offset       4)
(setq-default standart-indent      4)
(setq-default lisp-body-indent     4)
(setq-default cperl-indent-level   4)
(setq-default python-indent-offset 4)

;; To determine the function of indentation for Lisp
(setq-default lisp-indent-function 'common-lisp-indent-function)

;; The number of lines to try scrolling a window by when point moves out
(setq-default scroll-step 1)
;; Number of lines of margin at the top and bottom of a window
(setq-default scroll-margin 10)
;; Scroll up to this many lines, to bring point back on screen
(setq-default scroll-conservatively 10000)

;; Revert any buffer associated with a file when the file changes on disk
(global-auto-revert-mode)

;; To add a newline automatically at the end of the file
(setq-default require-final-newline t)
;; Don't insert newline to avoid 'end of buffer' error
(setq-default next-line-add-newlines nil)

;; Incremental search highlights the current match
(setq-default search-highlight t)
;; Highlight matches during query replacement
(setq-default query-replace-highlight t)

;; Use M-<arrow keys> for switch between window splits
(unless (equal major-mode 'org-mode)
    (windmove-default-keybindings 'meta))

;; Indenting buffer, delete trailing white spaces
;; and replace tabs with spaces before saving
(defun format-buffer ()
    (interactive)
    (save-excursion (delete-trailing-whitespace)
                    (unless (equal major-mode 'python-mode)
                        (indent-region (point-min) (point-max)))
                    (unless indent-tabs-mode
                        (untabify (point-min) (point-max)))) nil)
(add-to-list 'write-file-functions 'format-buffer)

;; CEDET
(require 'cedet)
(require 'cc-mode)
;; Semantic
(add-to-list 'semantic-default-submodes           'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes        'global-semantic-decoration-mode)
(add-to-list 'semantic-default-submodes      'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes    'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes    'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes  'global-semantic-idle-completions-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-show-parser-state-mode)
(semantic-mode)
(require 'semantic/ia)
(require 'semantic/bovine/gcc)
;; EDE
(global-ede-mode)
(require 'ede/generic)
(ede-enable-generic-projects)

;; Bookmarks
(require 'bookmark)
;; Save bookmarks when Emacs is killed
(setq-default bookmark-save-flag t)
(when (file-exists-p (concat user-emacs-directory "bookmarks"))
    (bookmark-load bookmark-default-file t))
(setq-default bookmark-default-file (concat user-emacs-directory "bookmarks"))

;; Package manager
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(defvar required-packages '(slime auto-complete))

(defun packages-installed-p ()
    (interactive)
    (loop for package in required-packages
          unless (package-installed-p package)
            do (return nil)
          finally (return t)))

(unless (packages-installed-p)
    (package-refresh-contents)
    (dolist (package required-packages)
        (unless (package-installed-p package)
            (package-install package))))

(when (packages-installed-p)
    ;; Auto-Complete
    (require 'auto-complete-config)
    (ac-config-default)
    (global-auto-complete-mode      t)
    (setq-default ac-auto-start     t)
    (setq-default ac-auto-show-menu t)
    (add-to-list 'ac-modes                        'lisp-mode)
    (add-to-list 'ac-sources             'ac-source-semantic)
    (add-to-list 'ac-sources            'ac-source-functions)
    (add-to-list 'ac-sources            'ac-source-variables)
    (add-to-list 'ac-sources           'ac-source-dictionary)
    (add-to-list 'ac-sources  'ac-source-words-in-all-buffer)
    (add-to-list 'ac-sources 'ac-source-files-in-current-dir)

    ;; SLIME
    (require 'slime)
    (require 'slime-autoloads)
    (setq-default unix-sbcl-bin       "/usr/bin/sbcl")
    (setq-default windows-sbcl-bin "C:/sbcl/sbcl.exe")
    (slime-setup '(slime-asdf slime-fancy slime-indentation))
    (setq-default slime-net-coding-system 'utf-8-unix)
    (if (or (file-exists-p unix-sbcl-bin) (file-exists-p windows-sbcl-bin))
        (if (system-is-windows)
            (setq-default inferior-lisp-program windows-sbcl-bin)
            (setq-default inferior-lisp-program unix-sbcl-bin))
        (message "%s" "SBCL not found..."))
    (add-to-list 'auto-mode-alist '("\\.cl\\'" . lisp-mode)))

;; Disable arrow keys
(global-unset-key    [up])
(global-unset-key  [down])
(global-unset-key  [left])
(global-unset-key [right])

;; Org-mode keys
(global-set-key (kbd "\C-ca")     'org-agenda)
(global-set-key (kbd "\C-cc")    'org-capture)
(global-set-key (kbd "\C-cb")   'org-iswitchb)
(global-set-key (kbd "\C-cl") 'org-store-link)

;; Insert a newline, then indent according to major mode
(global-set-key (kbd "RET") 'newline-and-indent)

;; Functional keys
(global-set-key (kbd "<f2>")               'imenu)
(global-set-key (kbd "<f3>")             'bs-show)
(global-set-key (kbd "<f4>")        'bookmark-set)
(global-set-key (kbd "<f5>")       'bookmark-jump)
(global-set-key (kbd "<f6>") 'bookmark-bmenu-list)
(global-set-key (kbd "<f7>")  'kmacro-start-macro)
(global-set-key (kbd "<f8>")    'kmacro-end-macro)
(global-set-key (kbd "<f9>")   'kmacro-call-macro)
