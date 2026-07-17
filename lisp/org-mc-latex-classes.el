;;; org-mc-latex-classes.el --- MCit Org LaTeX classes -*- lexical-binding: t; -*-

;;; Commentary:

;; Define the custom MCit LaTeX classes used by Org's LaTeX exporter.
;;
;; These classes suppress Org's default package list as well as
;; `org-latex-packages-alist'.  Package loading is expected to be performed by
;; the corresponding LaTeX document classes or through `#+LATEX_HEADER:'
;; directives.

;;; Code:

(require 'ox-latex)

(defconst org-mc-latex-packages-header
  (concat
   "[NO-DEFAULT-PACKAGES]\n"
   "[NO-PACKAGES]\n"
   "% org-mc-latex-classes.el --------------------------\n"
   "% Additional LaTeX headers from #+LATEX_HEADER lines\n"
   "[EXTRA]\n"
   "% End of org-mc-latex-classes.el -------------------\n")
  "Template inserted immediately after the `\\documentclass' declaration.

The placeholders have the following meanings:

- `[NO-DEFAULT-PACKAGES]' suppresses Org's default LaTeX packages.
- `[NO-PACKAGES]' suppresses packages from `org-latex-packages-alist'.
- `[EXTRA]' expands to user-defined `#+LATEX_HEADER:' lines.")

(defconst org-mc-latex-article-sections
  '(("\\section{%s}" . "\\section*{%s}")
    ("\\subsection{%s}" . "\\subsection*{%s}")
    ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
    ("\\paragraph{%s}" . "\\paragraph*{%s}")
    ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
  "Sectioning commands for article-like MCit LaTeX classes.")

(defconst org-mc-latex-report-sections
  '(("\\chapter{%s}" . "\\chapter*{%s}")
    ("\\section{%s}" . "\\section*{%s}")
    ("\\subsection{%s}" . "\\subsection*{%s}")
    ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
    ("\\paragraph{%s}" . "\\paragraph*{%s}"))
  "Sectioning commands for report-like MCit LaTeX classes.")

(defun org-mc-latex-register-class (name sections)
  "Register an Org LaTeX class named NAME using SECTIONS.

NAME is used as both the Org class name and the LaTeX document class.
SECTIONS is an Org LaTeX sectioning specification."
  (add-to-list
   'org-latex-classes
   (cons name
         (cons (concat "\\documentclass{" name "}\n"
                       org-mc-latex-packages-header)
               sections))))

(dolist (class '("mcarticle"
                 "mccommercial"
                 "mcwhitepaper"))
  (org-mc-latex-register-class
   class
   org-mc-latex-article-sections))

(dolist (class '("mcreport"
                 "mcbook"
                 "mcurd"
                 "aremis"))
  (org-mc-latex-register-class
   class
   org-mc-latex-report-sections))

(setq org-latex-default-class "mcarticle")

(provide 'org-mc-latex-classes)

;;; org-mc-latex-classes.el ends here
