(require 'python)
(require 'python-pep8)
(require 'flymake-python-pyflakes)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\SConscript\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\SConstruct\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\wscript\\'" . python-mode))
(setq python-indent-offset 4)

(setq flymake-python-pyflakes-executable "/usr/local/bin/pyflakes3")
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(add-hook 'python-mode-hook (lambda () (show-paren-mode t)))
