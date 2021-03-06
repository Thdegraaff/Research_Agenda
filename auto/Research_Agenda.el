(TeX-add-style-hook
 "Research_Agenda"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("SelfArx" "fleqn" "10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "english") ("biblatex" "sortcites=false" "style=authoryear-comp" "bibencoding=utf8" "natbib=true" "firstinits=true" "maxcitenames=2" "maxbibnames=99" "uniquename=false" "backend=bibtex" "useprefix=true" "backref=false" "doi=false" "isbn=false" "url=false" "dashed=true")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "SelfArx"
    "SelfArx10"
    "babel"
    "marvosym"
    "epigraph"
    "subfig"
    "listings"
    "biblatex"
    "hyperref")
   (TeX-add-symbols
    "keywordname")
   (LaTeX-add-labels
    "modelapproach"
    "dataapproach"
    "fig:twocultures"
    "practices"
    "model_economist"
    "P"
    "E"
    "eq:diff"
    "eq:density"
    "eq:fe"
    "fe"
    "heterogeneity"
    "fig:heterogeneity"
    "fig:flowchart"
    "agenda"
    "fig:mixturetwocultures"
    "eq:fe2"
    "eq:bayes"
    "eq:gravity"
    "fig:normal")
   (LaTeX-add-bibliographies
    "ThomasReferenties.bib"))
 :latex)

