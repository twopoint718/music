upper = \relative c' {
  \clef treble
  \key c \major
  \time 3/4

  \repeat volta 1 {
    c4 e g    <c, e g>2.            r2.           r
    c4 e g    <c, e g>2 <c e g>4    <c e g>2.    c'2.
  }
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4

  \repeat volta 1 {
    r2.       r2.          c4 e g       <c, e g>2.
    c4 e g    <c, e g>2 <c e g>4    <c e g>2.    c2.
  }
}

\header {
  title = "Deep Breathing"
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
