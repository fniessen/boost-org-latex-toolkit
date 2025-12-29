;;; org-mc-latex.el --- MCit configuration file for LaTeX

;;; Commentary:

;;; Code:

(require 'ox-latex)

;; include the `babel' package for language-specific hyphenation and typography
(add-to-list 'org-latex-packages-alist '("french" "babel") t)

;; default class
(setq org-latex-default-class "mcarticle")

(defconst org-mc-latex-packages-header
  (concat "[NO-DEFAULT-PACKAGES]"
          "[NO-PACKAGES]"
          "% org-mc-latex.el ----------------------\n"
          "\\usepackage[AUTO]{inputenc}\n"
          "% extra (#+LATEX_HEADER: lines) --------\n"
          "[EXTRA]\n"
          "% end of `org-latex-classes' -----------"
          "--------------------------------------\n")
  "Header that will be inserted after the `\documentclass' LaTeX macro.")

;; update the list of LaTeX classes and associated header (encoding, etc.) and
;; structure

;; NOT necessary anymore since Org 8.0.3?
;; (add-to-list 'org-latex-classes
;;              `("beamer"
;;                ,(concat "\\documentclass[presentation,t]{beamer}\n"
;;                         "\\usepackage{etex}% too many packages (for PDFTeX)\n"
;;                         "% default packages ---------------------\n"
;;                         "[DEFAULT-PACKAGES]"
;;                         "% packages -----------------------------\n"
;;                         "[PACKAGES]"
;;                         "% org-mc-latex.el ----------------------\n"
;;                         "% extra (#+LATEX/Beamer_HEADER: lines) -\n"
;;                         "[EXTRA]\n"
;;                         "% end of `org-latex-classes' -----------"
;;                         "--------------------------------------\n")
;;                ("\\section{%s}" . "\\section*{%s}")
;;                ("\\subsection{%s}" . "\\subsection*{%s}")
;;                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))

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

;;; org-mc-latex.el ends here
