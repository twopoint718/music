upper = \relative d'' {
  \clef treble
  \key c \major
  \time 4/4

  d-5 c-4 b-3 g-1
  a b8 c b4 g
  d' c b g
  a a g2

  % second line in my book
  d'4 c b g
  a b8 c b4 g
  d' c b g
  a a g2

  % third line
  g4 a b g
  c a b g
  a b8 c b4 g
  a a g2

  % fourth line
  g4 a b g
  c a b g
  a b8 c b4 g
  a a g2

}

lower = \relative g, {
  \clef bass
  \key c \major
  \time 4/4

  <g d'>2-> <g d'>->
  <g d'>-> <g d'>->
  <g d'>-> <g d'>->
  <g d'>-> <g d'>->

  <g d'>-> <g d'>->
  <g d'>-> <g d'>->
  <g d'>-> <g d'>->
  <g d'>-> <g d'>->

  <g d'>-> <g d'>->
  <g d'>-> <g d'>->
  <g d'>-> <g d'>->
  <g d'>-> <g d'>->

  <g d'>-> <g d'>->
  <g d'>-> <g d'>->
  <g d'>-> <g d'>->
  <g d'>-> <g d'>->
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
