;;; my-cheatsheet  --- Generate a cheatsheet for my most important key bindings.

;;; Commentary:

;;; Code:

;Example
;(cheatsheet-add-group 'XX
;                      '(:key "" :description "")
;                      '(:key "" :description "")
;                      )

(cheatsheet-add-group 'yasnippet
                      '(:key "C-c & C-n" :description "yas-new-snippet")
                      '(:key "C-c & C-s" :description "yas-insert-snippet")
                      '(:key "C-c & C-v" :description "yas-visit-snippet-file"))

(cheatsheet-add-group 'Common
                      '(:key "M-g M-g" :description "Go to line")
                      '(:key "M-g <TAB>" :description "Go to column")
                      '(:key "C-l" :description "Center current line")
                      '(:key "M-up" :description "Move text up (line or active region)")
                      '(:key "M-down" :description "Move text down (line or active region)")
                      '(:key "C-<tab>" :description "Go to other window")
                      '(:key "f4" :description "Toggle menu bar")
                      '(:key "s-t" :description "Look up word on dictcc")
                      '(:key "C-x C--" :description "Decrease font size")
                      '(:key "C-x C-+" :description "Increase font size")
                      '(:key "C-x C-0" :description "Set default font size")
                      '(:key "C-h b" :description "Show available key bindings in current buffer")
                      '(:key "s-c" :description "Show (this) cheat sheet"))

(cheatsheet-add-group 'Prog-mode
                      '(:key "C-c c" :description "Compile")
                      '(:key "C-n" :description "Go to next error")
                      '(:key "C-p" :description "Go to previous error")
                      '(:key "C-M-\\" :description "Indent region")
                      '(:key "M-i" :description "Change inner")
                      '(:key "M-o" :description "Change outer")
                      '(:key "M-m" :description "Back to indentation")
                      '(:key "" :description "")
                      )
(cheatsheet-add-group 'JSON
                      '(:key "C-c C-f" :description "format the region/buffer with json-reformat")
                      '(:key "C-c C-p" :description "display a path to the object at point with json-snatcher")
                      '(:key "C-c P" :description "copy a path to the object at point to the kill ring with json-snatcher")
                      '(:key "C-c C-t" :description "Toggle between true and false at point")
                      '(:key "C-c C-k" :description "Replace the sexp at point with null")
                      '(:key "C-c C-i" :description "Increment the number at point")
                      '(:key "C-c C-d" :description "Decrement the number at point"))

(cheatsheet-add-group "JSON-navigator"
                      '(:key "<tab>" :description "Move forward")
                      '(:key "s-<tab>" :description "Move backwards")
                      '(:key "<enter>" :description "Expand/collapse node")
                      '(:key "M-x json-navigator-navigate-after-point"
                             :description "Open a new buffer for hierarchy navigation"))


(cheatsheet-add-group 'Magit
                      '(:key "" :description "")
                      '(:key "" :description "")
                      )


(cheatsheet-add-group 'GDB
                      '(:key "" :description "")
                      '(:key "" :description "")
                      )

(cheatsheet-add-group 'Todo.txt
                      '(:key "C-x t" :description "Open todo.txt mode in new buffer")
                      '(:key "ESC" :description "Prefix Command")
                      '(:key "/" :description "todotxt-filter-for")
                      '(:key "?" :description "describe-mode")
                      '(:key "A" :description "todotxt-archive")
                      '(:key "N" :description "todotxt-nuke-item")
                      '(:key "\\" :description "todotxt-filter-out")
                      '(:key "a" :description "todotxt-add-item")
                      '(:key "c" :description "todotxt-complete-toggle")
                      '(:key "d" :description "todotxt-add-due-date")
                      '(:key "e" :description "todotxt-edit-item")
                      '(:key "g" :description "todotxt-revert")
                      '(:key "i" :description "todotxt-show-incomplete")
                      '(:key "j" :description "next-line")
                      '(:key "k" :description "previous-line")
                      '(:key "l" :description "todotxt-unhide-all")
                      '(:key "n" :description "next-line")
                      '(:key "p" :description "previous-line")
                      '(:key "q" :description "todotxt-bury")
                      '(:key "r" :description "todotxt-add-priority")
                      '(:key "s" :description "save-buffer")
                      '(:key "t" :description "todotxt-tag-item")
                      '(:key "u" :description "todotxt-undo")
                      )

(cheatsheet-add-group 'Flycheck
                      '(:key "C-c ! C-c" :description "flycheck-compile")
                      '(:key "C-c ! C-w" :description "flycheck-copy-errors-as-kill")
                      '(:key "C-c ! ?" :description "flycheck-describe-checker")
                      '(:key "C-c ! C" :description "flycheck-clear")
                      '(:key "C-c ! H" :description "display-local-help")
                      '(:key "C-c ! V" :description "flycheck-version")
                      '(:key "C-c ! c" :description "flycheck-buffer")
                      '(:key "C-c ! e" :description "flycheck-explain-error-at-point")
                      '(:key "C-c ! h" :description "flycheck-display-error-at-point")
                      '(:key "C-c ! i" :description "flycheck-manual")
                      '(:key "C-c ! l" :description "flycheck-list-errors")
                      '(:key "C-c ! n" :description "flycheck-next-error")
                      '(:key "C-c ! p" :description "flycheck-previous-error")
                      '(:key "C-c ! s" :description "flycheck-select-checke")
                      '(:key "C-c ! v" :description "flycheck-verify-setup")
                      '(:key "C-c ! x" :description "flycheck-disable-checker"))

(cheatsheet-add-group 'Python-mode
                      '(:key "C-c C-c" :description "python-shell-send-buffer")
                      '(:key "C-M-q" :description "prog-indent-sexp")
                      '(:key "C-c C-j" :description "imenu")
                      '(:key "C-c C-l" :description "python-shell-send-file")
                      '(:key "C-c C-p" :description "run-python")
                      '(:key "C-c C-r" :description "python-shell-send-region")
                      '(:key "C-c C-s" :description "python-shell-send-string")
                      '(:key "C-c C-t" :description "Prefix Command")
                      '(:key "C-c C-v" :description "python-check")
                      '(:key "C-c C-z" :description "python-shell-switch-to-shell")
                      '(:key "C-c <" :description "python-indent-shift-left")
                      '(:key "C-c >" :description "python-indent-shift-right")
                      '(:key "C-c C-t c" :description "python-skeleton-class")
                      '(:key "C-c C-t d" :description "python-skeleton-def")
                      '(:key "C-c C-t f" :description "python-skeleton-for")
                      '(:key "C-c C-t i" :description "python-skeleton-if")
                      '(:key "C-c C-t m" :description "python-skeleton-import")
                      '(:key "C-c C-t t" :description "python-skeleton-try")
                      '(:key "C-c C-t w" :description "python-skeleton-while")
                      '(:key "C-c C-d" :description "python-describe-at-point")
                      '(:key "C-c C-f" :description "python-eldoc-at-point"))

(cheatsheet-add-group 'GGtags
                      '(:key "M-." :description "ggtags-find-tag-dwim")
                      '(:key "M-]" :description "ggtags-find-reference")
                      '(:key "C-M-." :description "ggtags-find-tag-regexp")
                      '(:key "C-c M-SPC" :description "ggtags-save-to-register")
                      '(:key "C-c M-%" :description "ggtags-query-replace")
                      '(:key "C-c M-/" :description "ggtags-view-search-history")
                      '(:key "C-c M-?" :description "ggtags-show-definition")
                      '(:key "C-c M-b" :description "ggtags-browse-file-as-hypertext")
                      '(:key "C-c M-f" :description "ggtags-find-file")
                      '(:key "C-c M-g" :description "ggtags-grep")
                      '(:key "C-c M-h" :description "ggtags-view-tag-history")
                      '(:key "C-c M-i" :description "ggtags-idutils-query")
                      '(:key "C-c M-j" :description "ggtags-visit-project-root")
                      '(:key "C-c M-k" :description "ggtags-kill-file-buffers")
                      '(:key "C-c M-n" :description "ggtags-next-mark")
                      '(:key "C-c M-o" :description "ggtags-find-other-symbol")
                      '(:key "C-c M-p" :description "ggtags-prev-mark")
                      '(:key "C-c M-DEL" :description "ggtags-delete-tags"))

(cheatsheet-add-group 'Makefile
                      '(:key "M-n" :description "makefile-next-dependency")
                      '(:key "M-p" :description "makefile-previous-dependency")
                      '(:key "C-c C-b" :description "makefile-switch-to-browser")
                      '(:key "C-c C-c" :description "comment-region")
                      '(:key "C-c C-f" :description "makefile-pickup-filenames-as-targets")
                      '(:key "C-c TAB" :description "makefile-insert-gmake-function")
                      '(:key "C-c RET" :description "Prefix Command")
                      '(:key "C-c C-p" :description "makefile-pickup-everything")
                      '(:key "C-c C-u" :description "makefile-create-up-to-date-overview")
                      '(:key "C-c C-\\" :description "makefile-backslash-region")
                      '(:key "C-c :" :description "makefile-insert-target-ref")
                      '(:key "C-M-q" :description "prog-indent-sexp")
                      '(:key "C-c RET C-a" :description "makefile-automake-mode")
                      '(:key "C-c RET C-b" :description "makefile-bsdmake-mode")
                      '(:key "C-c RET C-g" :description "makefile-gmake-mode")
                      '(:key "C-c RET TAB" :description "makefile-imake-mode")
                      '(:key "C-c RET RET" :description "makefile-mode")
                      '(:key "C-c RET C-p" :description "makefile-makepp-mode"))

(cheatsheet-add-group 'Shell
                      '(:key "C-c C-c" :description "case statement")
                      '(:key "C-c C-f" :description "for loop")
                      '(:key "C-c (  " :description "function definition")
                      '(:key "C-c TAB" :description "if statement")
                      '(:key "C-c C-l" :description "indexed loop from 1 to n")
                      '(:key "C-c C-o" :description "while getopts loop")
                      '(:key "C-c C-r" :description "repeat loop")
                      '(:key "C-c C-s" :description "select loop")
                      '(:key "C-c C-u" :description "until loop")
                      '(:key "C-c C-w" :description "while loop"))


(cheatsheet-add-group 'XML
                      '(:key "C-c /" :description "Insert an end-tag.")
                      '(:key "C-c C-i" :description "Closes a start-tag with ‘>’ and inserts a balancing end-tag.")
                      '(:key "C-c C-b" :description "Like \"C-c C-i\" but for blocks.")
                      '(:key "C-c C-d" :description "put a tag around the word preceding point."))


(cheatsheet-add-group 'Graphviz-dot-mode
                      '(:key "C-c p" :description "Preview image")
                      '(:key "C-c v" :description "View in external viewer")
                      )

(provide 'my-cheatsheet)
;;; my-cheatsheet ends here
