# Carmina Burana — Leadsheets

A collection of typeset leadsheets from Carmina Burana, with automatic musical notation beams drawn via TikZ.

## Repository layout

```
carmina-macros.sty      Shared LaTeX package: all packages, macros, and page style
main.tex                Top-level document: loads the package, configures leadsheets,
                        and \input's each song file
songs/
  14-in-taberna.tex     "In taberna quando sumus"
```

### Adding a new song

1. Create `songs/<number>-<slug>.tex` containing a single `\begin{song}...\end{song}` block.
2. Add `\input{songs/<number>-<slug>}` to `main.tex`.

No changes to `carmina-macros.sty` or the build recipe are needed.

## Requirements

- **TeX Live 2025+** with the following packages:
  - `leadsheets`
  - `tikz` (with `tikzmark` and `calc` libraries)
  - `musicography`
  - `geometry`
  - `ebgaramond`
  - `fancyhdr`
  - `multicol`
- **`latexmk`** (included in TeX Live)

Install TeX Live on macOS via [MacTeX](https://tug.org/mactex/).

## Compiling locally

A `.latexmkrc` is included that configures the correct recipe to match Overleaf output:

```bash
latexmk -pdf main.tex
```

This runs `pdflatex` automatically as many times as needed (at least twice — required for the TikZ overlay beams to be positioned correctly).

To clean build artifacts:

```bash
latexmk -c
```

### What the recipe does

- Uses `pdflatex` with `-shell-escape` and `-interaction=nonstopmode`
- Reruns up to 5 times so `tikzmark` positions stabilise
- Continues past non-fatal errors from the `leadsheets`/`expl3` version mismatch

### Known warnings

The following are non-fatal and expected due to `leadsheets` v0.7 being written against an older `expl3`:

- `Variable \l__leadsheets_songs_height_prop undefined` — leadsheets internal; TeX recovers automatically
- `Missing $ inserted` (repeated) — same root cause; does not affect output

## Overleaf

The project compiles on Overleaf with the default **pdfLaTeX** compiler. No extra settings are needed there.
