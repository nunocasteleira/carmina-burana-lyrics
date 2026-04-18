# Carmina Burana `main.tex` Enhancements

## Status Key
- [ ] To-do
- [x] Done

---

## 🐛 Likely Bug

- [x] **Verse 4 missing `\resetmusic`** — Added `\resetmusic` before verse 4 and renumbered all draw-command markers from 28–45 → 1–18.

---

## 🎼 Musical Notation

- [x] **Define height/nudge constants** — Named lengths `\beamH`, `\beamN`, `\groupH`, `\sixteenH`, `\quarterH`, `\quarterdownH` defined; all draw calls updated.
- [x] **Fix `\drawQuarterDown`** — `\rotatebox{180}` confirmed correct: it mirrors horizontally, placing the stem on the left of the notehead as per standard notation.
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
- [x] **`\mw{syl-la-ble}` helper** — expl3 macro that splits on `-` and emits `\m` before each syllable; `\markword` is a verbose alias. Applied to all 12 marker-heavy lines. Two edge cases remain explicit: `\m --` (en-dash note) and `\m~` (space note).

---

## ✨ Content

- [ ] **Add English translation toggle** — use `\newif\iftranslation` so translations can be shown/hidden.
- [x] **Add composer metadata** — `\cbWorkTitle`, `\cbComposer`, `\cbCompDate` defined once in `carmina-macros.sty`; displayed in the fancyhdr left header on every page. Per-song files carry only their own movement title.

---

## Notes

- The marker system (`\m`, `\resetmusic`) is global per compile; verse numbering and mark numbering are coupled — any restructuring of verses requires recount of all draw commands.
- `disable-measuring = true` is required due to `multicol` inside a vbox; keep this in mind if the layout engine is ever changed.
