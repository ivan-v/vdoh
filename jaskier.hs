module Jaskier where
import Euterpea
import Data.Ratio

-- Modes are recorded in relative pitches to the tonic/root note, 0.
-- TODO: make non-8 note scales work properly

data Moda  = Moda { mode_name :: String, notes :: [Integer]}
type Modes = [Moda]

i = Moda {mode_name="Ionian", notes=[0, 2, 4, 5, 7, 9, 11]}

modes = [
         Moda {mode_name="Ionian",     notes=[0, 2, 4, 5, 7, 9, 11]},
         Moda {mode_name="Mixolydian", notes=[0, 2, 4, 5, 7, 9, 10]},
         Moda {mode_name="Lydian ",    notes=[0, 2, 4, 6, 7, 9, 11]},
         Moda {mode_name="Dorian",     notes=[0, 2, 3, 5, 7, 9, 10]},
         Moda {mode_name="Phrygian",   notes=[0, 1, 3, 5, 7, 8, 10]},
         Moda {mode_name="Aeolian",    notes=[0, 2, 3, 5, 7, 8, 10]},
         Moda {mode_name="Pentatonic", notes=[0, 2, 4, 6, 9]},
         Moda {mode_name="Blues",      notes=[0, 3, 5, 6, 7, 10]}
        ]


-- Keys are how tones (selected by the modes) are modified

data Key  = Key { key_name :: String, pitch_modifiers :: [Integer]}
type Keys = [Key]

keys = [
        Key {key_name="C",   pitch_modifiers=[0, 0, 0, 0, 0, 0, 0]},
        Key {key_name="G",   pitch_modifiers=[0, 0, 0, 0, 0, 0, 1]},
        Key {key_name="D",  pitch_modifiers=[0, 1, 0, 0, 0, 1, 0]},
        Key {key_name="A",  pitch_modifiers=[0, 0, 1, 0, 0, 1, 1]},
        Key {key_name="E",  pitch_modifiers=[0, 1, 1, 0, 0, 1, 1]},
        Key {key_name="B",  pitch_modifiers=[0, 1, 1, 0, 1, 1, 1]},
        Key {key_name="Fs", pitch_modifiers=[1, 1, 1, 0, 1, 1, 1]},
        Key {key_name="Cs", pitch_modifiers=[1, 1, 1, 1, 1, 1, 1]},
        Key {key_name="F",  pitch_modifiers=[0, 0, 0, -1, 0, 0, 0]},
        Key {key_name="Bb", pitch_modifiers=[-1, 0, 0, -1, 0, 0, 0]},
        Key {key_name="Eb", pitch_modifiers=[-1, 0, 0, -1, -1, 0, 0]},
        Key {key_name="Ab", pitch_modifiers=[-1, -1, 0, -1, -1, 0, 0]},
        Key {key_name="Db", pitch_modifiers=[-1, -1, 0, -1, -1, -1, 0]},
        Key {key_name="Gb", pitch_modifiers=[-1, -1, -1, -1, -1, -1, 0]},
        Key {key_name="Cb", pitch_modifiers=[-1, -1, -1, -1, -1, -1, -1]}
       ]


-- TODO: improve clunky usage: apply_key (keys!!0) (modes!!0)
apply_key :: Key -> Moda -> [Integer]
apply_key (Key name modifiers) (Moda scale notes) =
 zipWith (+) (modifiers) notes  

