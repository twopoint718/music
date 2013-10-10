upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  \repeat volta 2 {
    c d e f
    g f e d
    c d e d
    c2 c

    c4 d e f
    g f e d
    c d e d
    c1
  }
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \repeat volta 2 {
    c4 d e f
    g f e d
    c d e d
    c2 c

    c4 d e f
    g f e d
    c d e d
    c1
  }
}

\header {
  title = "Walking"
  meter = "andato"
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
