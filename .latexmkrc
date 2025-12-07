# =========================================================
# Latexmk configuration
# =========================================================

# Produce PDF directly (PDF mode).
$pdf_mode = 1;     

# ---------------------------------------------------------
# PDF engines
# ---------------------------------------------------------

$pdflatex = 'pdflatex -interaction=nonstopmode -halt-on-error %O %S';

$lualatex = 'lualatex -interaction=nonstopmode -halt-on-error %O %S';

# Disable other engine explicitly (safety).
$xelatex  = '';

# ---------------------------------------------------------
# Index generation: texindy (French, UTF-8)
# ---------------------------------------------------------

$makeindex = 'texindy -L french -C utf8 %O -o %D %S';

# ---------------------------------------------------------
# General build settings
# ---------------------------------------------------------

# Maximum number of runs.
$max_repeat = 5;

# Set to 1 for quieter output.
$silent     = 0;    

# ---------------------------------------------------------
# List of generated extensions (for dependency tracking)
# (Used by latexmk internally; does not control cleaning
#  by itself, but we keep it complete and accurate.)
# ---------------------------------------------------------

@generated_exts = (
  'aux', 'auxlock', 'bbl', 'bcf', 'blg',
  'fdb_latexmk', 'fls', 'log',
  'nav', 'snm', 'out', 'toc',
  'vrb',              # beamer verbatim fragments
  'synctex.gz',
  'run.xml',          # biblatex/biber
  'ilg', 'ind', 'idx' # index-related
);

# ---------------------------------------------------------
# Cleaning behaviour
#
#  - latexmk -c  : remove "nonessential" files (clean_ext)
#  - latexmk -C  : remove more aggressively (clean_full_ext)
#
# Beamer-specific: we explicitly include .nav, .snm, .vrb etc.
# ---------------------------------------------------------

# Files removed by `latexmk -c`
$clean_ext{'aux'}        = 1;
$clean_ext{'auxlock'}    = 1;
$clean_ext{'bbl'}        = 1;
$clean_ext{'bcf'}        = 1;
$clean_ext{'blg'}        = 1;
$clean_ext{'fdb_latexmk'}= 1;
$clean_ext{'fls'}        = 1;
$clean_ext{'log'}        = 1;
$clean_ext{'nav'}        = 1;  # beamer navigation
$clean_ext{'snm'}        = 1;  # beamer slide names
$clean_ext{'out'}        = 1;
$clean_ext{'toc'}        = 1;
$clean_ext{'vrb'}        = 1;  # beamer verbatim frames
$clean_ext{'synctex.gz'} = 1;
$clean_ext{'run.xml'}    = 1;  # biblatex/biber
$clean_ext{'idx'}        = 1;
$clean_ext{'ilg'}        = 1;
$clean_ext{'ind'}        = 1;

# Files removed by `latexmk -C` (more aggressive)
$clean_full_ext{'aux'}        = 1;
$clean_full_ext{'auxlock'}    = 1;
$clean_full_ext{'bbl'}        = 1;
$clean_full_ext{'bcf'}        = 1;
$clean_full_ext{'blg'}        = 1;
$clean_full_ext{'fdb_latexmk'}= 1;
$clean_full_ext{'fls'}        = 1;
$clean_full_ext{'log'}        = 1;
$clean_full_ext{'nav'}        = 1;
$clean_full_ext{'snm'}        = 1;
$clean_full_ext{'out'}        = 1;
$clean_full_ext{'toc'}        = 1;
$clean_full_ext{'vrb'}        = 1;
$clean_full_ext{'synctex.gz'} = 1;
$clean_full_ext{'run.xml'}    = 1;
$clean_full_ext{'idx'}        = 1;
$clean_full_ext{'ilg'}        = 1;
$clean_full_ext{'ind'}        = 1;

# (Add more extensions here if your workflow creates extra aux files)