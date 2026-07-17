;;; org-mc-latex-classes.el --- MCit configuration file for LaTeX

;;; Commentary:

;;; Code:

(require 'ox-latex)

;; include the `babel' package for language-specific hyphenation and typography
(add-to-list 'org-latex-packages-alist '("french" "babel") t)

;; default class
(setq org-latex-default-class "mcarticle")

(defconst org-mc-latex-packages-header
  (concat
   "[NO-DEFAULT-PACKAGES]\n"
   "[NO-PACKAGES]\n"
   "% org-mc-latex-classes.el --------------------------\n"
   "% Additional LaTeX headers from #+LATEX_HEADER lines\n"
   "[EXTRA]\n"
   "% End of org-mc-latex-classes.el -------------------\n")
  "Template inserted immediately after the `\\documentclass' declaration.

The placeholders have the following meaning:

- `[NO-DEFAULT-PACKAGES]` disables Org's default LaTeX packages.
- `[NO-PACKAGES]` disables packages from `org-latex-packages-alist`.
- `[EXTRA]` expands to user-defined `#+LATEX_HEADER:` lines.

This template is used by custom Org LaTeX classes such as
`mcarticle` and `mcreport`.")

;; update the list of LaTeX classes and associated header (encoding, etc.) and
;; structure

(add-to-list 'org-latex-classes
             `("mcarticle"
               ,(concat "\\documentclass{mcarticle}\n"
                        org-mc-latex-packages-header)
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             `("mcreport"
               ,(concat "\\documentclass{mcreport}\n"
                        org-mc-latex-packages-header)
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")))

(add-to-list 'org-latex-classes
             `("mcbook"
               ,(concat "\\documentclass{mcbook}\n"
                        org-mc-latex-packages-header)
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")))

(add-to-list 'org-latex-classes
             `("mccontract"
               ,(concat "\\documentclass{mccontract}\n"
                        org-mc-latex-packages-header)
               ("\\mccarticle{%s}" . "\\mccarticle*{%s}")
               ("\\mccparagraph{%s}" . "\\mccparagraph*{%s}")))

(add-to-list 'org-latex-classes
             `("mccommercial"
               ,(concat "\\documentclass{mccommercial}\n"
                        org-mc-latex-packages-header)
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             `("mcurd"
               ,(concat "\\documentclass{mcurd}\n"
                        org-mc-latex-packages-header)
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")))

(add-to-list 'org-latex-classes
             `("mcwhitepaper"
               ,(concat "\\documentclass{mcwhitepaper}\n"
                        org-mc-latex-packages-header)
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(add-to-list 'org-latex-classes
             `("aremis"
               ,(concat "\\documentclass{aremis}\n"
                        org-mc-latex-packages-header)
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")))

;;; org-mc-latex-classes.el ends here
