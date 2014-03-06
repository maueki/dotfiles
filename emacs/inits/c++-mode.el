
(setq auto-mode-alist
      (append (list
               '("\\.cpp$" . c++-mode)
               '("\\.h$" . c++-mode)
               '("\\.c$" . c-mode)
               auto-mode-alist)))
;; C++ style
(add-hook 'c++-mode-hook
          '(lambda()
             (c-set-style "stroustrup")
             (setq indent-tabs-mode nil)     ; インデントは空白文字で行う（TABコードを空白に変換）
             (c-set-offset 'innamespace 0)   ; namespace {}の中はインデントしない
             (c-set-offset 'arglist-close 0) ; 関数の引数リストの閉じ括弧はインデントしない
             )) 
