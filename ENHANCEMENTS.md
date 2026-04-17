# Carmina Burana `main.tex` Enhancements

## Status Key
- [ ] To-do
- [x] Done

---

## 🐛 Likely Bug

- [x] **Verse 4 missing `\resetmusic`** — Added `\resetmusic` before verse 4 and renumbered all draw-command markers from 28–45 → 1–18.

---

## 🎼 Musical Notation

- [ ] **Define height/nudge constants** — Replace magic numbers (`18pt`, `15pt`, `3pt`) with named commands like `\beamheight`, `\beamnudge` for easier global tuning.
- [ ] **Fix `\drawQuarterDown`** — Currently uses `\rotatebox{180}` which flips the whole glyph. Replace with a proper stem-down quarter note symbol.
- [ ] **`io, io` ending has no note markings** (lines 279–282) — Clarify if intentional; add markings or a comment.

---

## 📝 Typography & Layout

- [x] **Add `\usepackage[latin]{babel}`** for correct Latin hyphenation.
- [x] **Use a period-appropriate serif font** — Added `ebgaramond` + `fontenc`.
- [x] **Add page numbers** — `\pagestyle{plain}` added after `\begin{document}`.
- [x] **Review `\vfill`** — Replaced with `\vspace{\baselineskip}` for consistent spacing.

---

## 🧹 Code Quality

- [ ] **Remove or archive commented-out drawing commands** at lines 291–299 (development leftovers).
- [x] **Add explanatory comment** for verse 4's intentional marker continuation — fixed by adding `\resetmusic` instead.
- [ ] **Consider `\markword{syl-la-ble}` helper** to pair `\m` markers with text more consistently and reduce scattered `\m` calls.

---

## ✨ Content

- [ ] **Add English translation toggle** — use `\newif\iftranslation` so translations can be shown/hidden.
- [ ] **Add composer metadata** (Carl Orff, 1935–36) to the song header or document preamble.

---

## Notes

- The marker system (`\m`, `\resetmusic`) is global per compile; verse numbering and mark numbering are coupled — any restructuring of verses requires recount of all draw commands.
- `disable-measuring = true` is required due to `multicol` inside a vbox; keep this in mind if the layout engine is ever changed.
