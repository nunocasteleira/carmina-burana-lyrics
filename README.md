# Carmina Burana — In taberna quando sumus

A typeset leadsheet for *In taberna quando sumus* from Carmina Burana, with automatic musical notation beams drawn via TikZ.

## Requirements

- **TeX Live 2025+** with the following packages:
  - `leadsheets`
  - `tikz` (with `tikzmark` and `calc` libraries)
  - `musicography`
  - `geometry`
  - `setspace`
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
