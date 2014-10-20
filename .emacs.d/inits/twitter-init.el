;;; -*- Emacs-Lisp -*-
;;; -*- coding: utf-8 -*-

;; twittering-mode
(setq twittering-use-master-password t)
(setq twittering-icon-mode t)
;;(setq twittering-status-format "%i %R %S@%s,  %@:\n%FILL[  ]{%T // from %f%L%r}\n ")
(setq twittering-status-format "%i %R %S@%s,  %@:\n%FILL[  ]{%T}\n ")

; use proxy
(let ((url (getenv "https_proxy")))
  (progn (string-match "https:\\/\\/\\([a-zA-Z0-9.]*\\)\\(:\\([0-9]*\\)\\)?" url)
	 (if (not (null (match-string 1 url)))
	     (progn (setq twittering-proxy-use t)
		    (setq twittering-proxy-server (match-string 1 url))
		    (if (not (null (match-string 3 url)))
			(setq twittering-proxy-port (string-to-number (match-string 3 url))))
	 ))))

