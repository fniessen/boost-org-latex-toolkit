# -*- mode: perl; coding: utf-8; -*-

# =========================================================
# latexmk configuration
# =========================================================

# Generate the PDF directly using LuaLaTeX.
$pdf_mode = 4;

# ---------------------------------------------------------
# PDF engines
# ---------------------------------------------------------

# LuaLaTeX is the project's standard engine.
# The pdflatex command is kept for convenience should the
# engine be changed temporarily.
$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error %O %S';

$lualatex = 'lualatex -interaction=nonstopmode -halt-on-error %O %S';

# Disable XeLaTeX explicitly (safety).
$xelatex = '';

# ---------------------------------------------------------
# Index generation
# ---------------------------------------------------------

# Previous implementation using texindy:
# $makeindex = 'texindy -L french -C utf8 %O -o %D %S';

# Current implementation using xindex (French).
$makeindex = 'xindex -l fr %O -o %D %S';

# ---------------------------------------------------------
# General build settings
# ---------------------------------------------------------

# Maximum number of compilation runs performed to resolve cross-references,
# table of contents, bibliography, etc.
$max_repeat = 5;

# Set to 1 to suppress most output (quiet mode).
# Set to 0 to display full build output (default).
$silent = 0;

# ---------------------------------------------------------
# Generated file extensions
#
# Used by latexmk for dependency tracking.
# ---------------------------------------------------------

@generated_exts = qw(
                      aux
                      auxlock
                      bbl
                      bcf
                      blg
                      fdb_latexmk
                      fls
                      idx
                      ilg
                      ind
                      log
                      nav
                      out
                      run.xml
                      snm
                      synctex.gz
                      toc
                      vrb
                   );

# ---------------------------------------------------------
# Cleaning behaviour
#
#   latexmk -c  : remove auxiliary files
#   latexmk -C  : remove auxiliary files more aggressively
#
# The cleaning extensions are derived from the generated extensions to keep
# a single source of truth.
# ---------------------------------------------------------

$clean_ext      = join ' ', @generated_exts;
$clean_full_ext = $clean_ext;
