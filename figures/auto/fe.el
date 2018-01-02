(TeX-add-style-hook
 "fe"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("standalone" "class=minimal" "border=2pt")))
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "tikz"
    "verbatim"
    "pgfplots"
    "pgfplotstable"))
 :latex)

