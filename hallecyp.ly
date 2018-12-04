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
		{	\time 4/4 \tempo 4 = 85
			\clef "treble" \armure
			\set Staff.midiInstrument = #"bright acoustic"
			\new Voice = "sopo"
				{ \repeat volta 2 { \sopA }
				  \alternative {
					{ \sopAa }
					{ \sopAb }
					} \break
				  \sopB \break \sopC \break \sopD \break \sopE
				}
		} % end staff
	\new Lyrics { \lyricsto "sopo" { \LsopA \LsopB \LsopC \LsopD \LsopE
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
				  \altB \altC \altD \altE
				}
		}	% end staff
	\new Lyrics { \lyricsto "altoa" { \LaltA \LaltB \LaltC \LaltD \LaltE
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
				  \tenB \tenC \tenD \tenE
				}
		}	% end staff
	\new Lyrics { \lyricsto "tenoa" { \LtenA \LtenB \LtenC \LtenD \LtenE
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
				  \basB \basC \basD \basE
				}
		}	% end staff
	\new Lyrics { \lyricsto "basso" { \LbasA \LbasB \LbasC \LbasD \LbasE
			}
		} % end lyrics
			
	% \new DrumStaff {
	%	\drummode { \repeat unfold  11 { \percu } }
	%	}	% end staff
>>	% end staffgroup
\layout { }
\midi { }
}	% end score

