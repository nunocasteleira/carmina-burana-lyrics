\version "2.26.0"

\header {
  tagline = ##f
}

\paper {
  indent = 0
  line-width = 9\cm
  top-margin = 0
  bottom-margin = 0
  left-margin = 0
  right-margin = 0
}

\score {
  <<
    \new Staff {
      \clef "treble_8"
      \key f \major
      \dynamicUp
      \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
      \once \override Staff.TimeSignature.text = \markup {
        \override #'(baseline-skip . 2)
        \center-column {
          \number "4"
          \musicglyph "noteheads.s-1"
        }
      }
      \time 8/1
      f'\breve->\f c'\breve-> \appoggiatura c'4 d'\breve-> c'\breve-> \breathe
    }
    \addlyrics {
      Iam li -- ques -- cit
    }
  >>
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
  }
}
