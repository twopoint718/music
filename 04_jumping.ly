upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  \repeat volta 2 {
    c-. r c-. r    <c e>-. r <c e>-. r    <c e g>-. r <c e g>-. r    <c e g>1
  }
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \repeat volta 2 {
    c4-. r c-. r    <c e>-. r <c e>-. r    <c e g>-. r <c e g>-. r    <c e g>1
  }
}

\header {
  title = "Skipping"
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
