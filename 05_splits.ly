upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  \repeat volta 2 {
    c8 d e f g f e d    c d e f g f e d    c d e f g f e d    c2 c'
  }
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \repeat volta 2 {
    c8 b a g f g a b    c b a g f g a b    c b a g f g a b    c'2 c,
  }
}

\header {
  title = "The Splits"
}

\score {
  \version "2.16.1"
  \new PianoStaff
  <<
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
  \midi {}
}
