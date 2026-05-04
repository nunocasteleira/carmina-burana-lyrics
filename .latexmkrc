# Use lualatex with shell-escape (required for lyluatex snippet compilation)
$pdf_mode = 1;
$pdflatex = 'lualatex -shell-escape -interaction=nonstopmode %O %S';

# Force completion even if lualatex returns non-zero (mirrors Overleaf behaviour)
$force_mode = 1;

# Run up to 5 times to let tikzmark positions stabilize
$max_repeat = 5;

# Output PDF name, independent of the source entrypoint (main.tex)
$jobname = 'carmina-burana-lyrics';
