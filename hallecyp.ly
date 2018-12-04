\version "2.18.0" \language "english"

% armure commentifiable : Bb maj
 armure = { \key bf \major }

\include "lib_hallecyp.ly"

\header { title = "Hallelujah 2nd part. (Cyprien Zeni)" }
\score {
\new StaffGroup <<
	% --------------------------------------------------------------------------- SOPRANO
	\new Staff \with { instrumentName = #"Sop" shortInstrumentName = #"S"
		\consists "Ambitus_engraver" 	% ambitus = tessiture, affichee avant la clef
		}
		{	\time 4/4 \tempo 2 = 76
			\clef "treble" \armure
			\set Staff.midiInstrument = #"bright acoustic"
			\new Voice = "sopo"
				{ \repeat volta 2 { \sopA }
				  \alternative {
					{ \sopAa }
					{ \sopAb }
					} 
				}
		} % end staff
	\new Lyrics { \lyricsto "sopo" { \LsopA 
			}
		} % end lyrics
	% --------------------------------------------------------------------------- ALTO
	\new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A"
		\consists "Ambitus_engraver"
		}
		{	\clef "treble" \armure
			\set Staff.midiInstrument = #"bright acoustic"
			\new Voice = "altoa"
				{ \repeat volta 2 { \altA }
				  \alternative {
					{ \altAa }
					{ \altAb }
					} 
				}
		}	% end staff
	\new Lyrics { \lyricsto "altoa" { \LaltA 
			}
		} % end lyrics
	% --------------------------------------------------------------------------- TENOR
	\new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T"
		\consists "Ambitus_engraver"
		}
		{	\clef "bass" \armure
			\set Staff.midiInstrument = #"bright acoustic"
			\new Voice = "tenoa"
				{ \repeat volta 2 { \tenA }
				  \alternative {
					{ \tenAa }
					{ \tenAb }
					} 
				}
		}	% end staff
	\new Lyrics { \lyricsto "tenoa" { \LtenA 
			}
		} % end lyrics
	% --------------------------------------------------------------------------- BASS
	\new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B"
		\consists "Ambitus_engraver"
		}
		{	\clef "bass" \armure
			\set Staff.midiInstrument = #"bright acoustic"
			\new Voice = "basso"
				{ \repeat volta 2 { \basA }
				  \alternative {
					{ \basAa }
					{ \basAb }
					} 
				}
		}	% end staff
	\new Lyrics { \lyricsto "basso" { \LbasA 
			}
		} % end lyrics
			
	% \new DrumStaff {
	%	\drummode { \repeat unfold  11 { \percu } }
	%	}	% end staff
>>	% end staffgroup
\layout { }
\midi { }
}	% end score

