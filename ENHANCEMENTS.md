# Carmina Burana `main.tex` Enhancements

## Status Key
- [ ] To-do
- [x] Done

---

## 🐛 Likely Bug

- [ ] **Verse 4 missing `\resetmusic`** — Markers 28–45 intentionally continue verse 3's namespace, but this is undocumented and fragile. Add an explanatory comment (or restructure).

---

## 🎼 Musical Notation

- [ ] **Define height/nudge constants** — Replace magic numbers (`18pt`, `15pt`, `3pt`) with named commands like `\beamheight`, `\beamnudge` for easier global tuning.
- [ ] **Fix `\drawQuarterDown`** — Currently uses `\rotatebox{180}` which flips the whole glyph. Replace with a proper stem-down quarter note symbol.
- [ ] **`io, io` ending has no note markings** (lines 279–282) — Clarify if intentional; add markings or a comment.

---

## 📝 Typography & Layout

- [ ] **Add `\usepackage[latin]{babel}`** for correct Latin hyphenation.
- [ ] **Use a period-appropriate serif font** (e.g. `EB Garamond` via `fontspec`).
- [ ] **Add page numbers** via `\pagestyle{plain}`.
- [ ] **Review `\vfill`** between verses 2 and 3 — may cause inconsistent spacing across recompiles.

---

## 🧹 Code Quality

- [ ] **Remove or archive commented-out drawing commands** at lines 291–299 (development leftovers).
- [ ] **Add explanatory comment** for verse 4's intentional marker continuation.
- [ ] **Consider `\markword{syl-la-ble}` helper** to pair `\m` markers with text more consistently and reduce scattered `\m` calls.

---

## ✨ Content

- [ ] **Add English translation toggle** — use `\newif\iftranslation` so translations can be shown/hidden.
- [ ] **Add composer metadata** (Carl Orff, 1935–36) to the song header or document preamble.

---

## Notes

- The marker system (`\m`, `\resetmusic`) is global per compile; verse numbering and mark numbering are coupled — any restructuring of verses requires recount of all draw commands.
- `disable-measuring = true` is required due to `multicol` inside a vbox; keep this in mind if the layout engine is ever changed.
