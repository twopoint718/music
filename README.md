# Music

These are some lilypond files that contain music that I'm learning to
play.

## Usage

Any of the lilypond files can be compiled with:

``` bash
lilypond file.ly
```

Any `ly` files that have a:

``` lilypond
\score {
  % ...
  \layout {}
  \midi {}
  % ...
}
```

Will generate both a midi file and a PDF sheet music file.
