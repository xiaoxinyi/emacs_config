; Allow loading code from ./elisp
(add-to-list 'load-path 
	     (concat 
	      (file-name-directory load-file-name) 
	      "/elisp"))

;; --- mode configurations and such ---
(setq config_packages
      '("autocomplete"
	"bmarks"
	"cleanup"
        "codesearch"
	"cpp"
	"dirtree"
        "flymake"
	"git"
        "helm"
        "haskell"
	"hg"
 	"html"
	"ido"
	"javascript"
	"multiterm"
        "outline-presentation"
	"p4"
	"php"
	"prosjekt"
	"python"
	"rst"
        "slime"
	"traad"
	"uniquify"
	"visual_basic"
	"yasnippet"
	)
      )

(mapc (lambda (dir)
	(add-to-list 'load-path (concat (file-name-directory load-file-name) "/" dir))
	(load (concat dir "/config")))
      config_packages)

(provide 'configure-packages)