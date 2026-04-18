# Use pdflatex with shell-escape (matches Overleaf's \write18 enabled)
$pdf_mode = 1;
$pdflatex = 'pdflatex -shell-escape -interaction=nonstopmode %O %S';

# Force completion even if pdflatex returns non-zero (mirrors Overleaf behaviour)
$force_mode = 1;

# Run up to 5 times to let tikzmark positions stabilize
$max_repeat = 5;

# Output PDF name, independent of the source entrypoint (main.tex)
$jobname = 'carmina-burana-lyrics';
