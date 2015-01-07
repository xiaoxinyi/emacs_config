(add-to-list 'load-path "/Users/sixtynorth/projects/emacs-ycmd")

(require 'ycmd)
(require 'company-ycmd)
(require 'flycheck-ycmd)

(add-hook 'c++-mode-hook 'ycmd-mode)
(add-hook 'python-mode-hook 'ycmd-mode)

;; (remove-hook 'ycmd-file-parse-result-hook 'ycmd-decorate-with-parse-results)
(flycheck-ycmd-setup)

(setq ycmd--log-enabled t)
(set-variable 'ycmd-server-command '("/usr/bin/python" "/Users/sixtynorth/projects/ycmd/ycmd"))
(set-variable 'ycmd-extra-conf-whitelist '("~/projects/*" "~/sandbox/*"))
(set-variable 'ycmd-global-config
              (concat (file-name-directory load-file-name)
                      "ycm_global_conf.py"))
;; (ycmd-open)

; We're trying out ycmd. No need for original clang support.
(setq company-backends (remove 'company-clang company-backends))

(global-set-key [(ctrl c) (y) (g)] 'ycmd-goto)

(setq company-backends
      '(company-ycmd
        company-bbdb
        company-nxml
        company-css
        company-eclim
        company-semantic
        company-xcode
        ;; company-ropemacs
        company-cmake
        company-capf
        (company-dabbrev-code company-gtags company-etags company-keywords)
        company-oddmuse
        company-files
        company-dabbrev
        ))

;; (setq company-backends (append company-backends '(company-ycmd-backend)))

;; (company-ycmd-setup)

