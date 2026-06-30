# -*- mode: cperl; coding: utf-8; -*-

# =========================================================
# latexmk configuration
# =========================================================

# Generate the PDF directly using LuaLaTeX.
$pdf_mode = 4;

# ---------------------------------------------------------
# PDF engines
# ---------------------------------------------------------

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

# Set to 1 for quieter output.
# Set to 0 for normal output.
$silent = 0;

# ---------------------------------------------------------
# Generated file extensions
#
# Used by latexmk for dependency tracking.
# ---------------------------------------------------------

@generated_exts = (
                   'aux', 'auxlock',
                   'bbl', 'bcf', 'blg',
                   'fdb_latexmk', 'fls', 'log',
                   'idx', 'ilg', 'ind',
                   'nav', 'out', 'run.xml',
                   'snm', 'synctex.gz',
                   'toc', 'vrb',
                  );

# ---------------------------------------------------------
# Cleaning behaviour
#
#   latexmk -c  : remove auxiliary files
#   latexmk -C  : remove auxiliary files more aggressively
#
# Add additional extensions here if your workflow generates extra auxiliary
# files.
# ---------------------------------------------------------

$clean_ext = join ' ', qw(
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

# For this project, use the same list for a full clean.
$clean_full_ext = $clean_ext;
