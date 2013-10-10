upper = \relative f' {
  \clef treble
  \key f \major
  \time 4/4

  a-.-3\mf a-. bes8( a g f
  g4-.) c-. c2--
  a4-. a-. bes8( a g f
  e4-.-3) g-.-5 c,2

  c'4-.-3 c-. d8( c bes a
  d4-.) d-. d2--
  c4-.-5 a-. c8( bes a g
  f2) r

}

lower = \relative f {
  \clef bass
  \key f \major
  \time 4/4

  f2-2 r
  e r
  f r
  c r

  a'2 f
  bes4-. bes4-. bes2
  a4-1 f g-1 c,-5
  f2-2 f

}

\header {
  title = "March in F"
  composer = \markup { "Daniel Gottlob Turk" \small "(1756-1813)" }
  meter = "moderato"
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
