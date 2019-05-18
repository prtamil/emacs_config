
(load (expand-file-name "~/quicklisp/slime-helper.el"))

(require 'slime-autoloads)
(setq slime-net-coding-system 'utf-8-unix)

(setq slime-lisp-implementations
        '((ccl ("/Users/tamilselvan/Softwares/CCL/ccl-dev/dx86cl64" "-l" "/Users/tamilselvan/ccl-init.lisp" "-K utf-8"))))

(setf slime-default-lisp 'ccl)
(setf slime-contribs '(slime-fancy))

;; Allow Communication between slime swank lisp and emacs
(setq slime-enable-evaluate-in-emacs t)

;;paredit setup

(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'slime-repl-mode-hook 'enable-paredit-mode)


