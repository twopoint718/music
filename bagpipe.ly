upper = \relative d'' {
  \clef treble
  \key g \major
  \time 4/4

  d c  b g
  a b8 c b4 g
  d' c b g
  a a g2
}

lower = \relative b,, {
  \clef bass
  \key g \major
  \time 4/4

  g d
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout {}
}
