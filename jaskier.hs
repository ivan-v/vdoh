module Jaskier where
import Euterpea
import Data.Ratio

-- Modes are recorded in relative pitches to the tonic/root note, 0.
-- TODO: make non-8 note scales work properly

data Moda  = Moda { mode_name :: String, notes :: [Integer]}
type Modes = [Moda]

modes = [
         ("Ionian",     [0, 2, 4, 5, 7, 9, 11]),
         ("Mixolydian", [0, 2, 4, 5, 7, 9, 10]),
         ("Lydian ",    [0, 2, 4, 6, 7, 9, 11]),
         ("Dorian",     [0, 2, 3, 5, 7, 9, 10]),
         ("Phrygian",   [0, 1, 3, 5, 7, 8, 10]),
         ("Aeolian",    [0, 2, 3, 5, 7, 8, 10]),
         ("Pentatonic", [0, 2, 4, 6, 9]),
         ("Blues",      [0, 3, 5, 6, 7, 10])
        ]


-- Keys are how tones (selected by the modes) are modified

data Key  = Key { key_name :: String, pitch_modifiers :: [Integer]}
type Keys = [Key]

keys = [
        ("C",  [0, 0, 0, 0, 0, 0, 0]),
        ("G",  [0, 0, 0, 0, 0, 0, 1]),
        ("D",  [0, 1, 0, 0, 0, 1, 0]),
        ("A",  [0, 0, 1, 0, 0, 1, 1]),
        ("E",  [0, 1, 1, 0, 0, 1, 1]),
        ("B",  [0, 1, 1, 0, 1, 1, 1]),
        ("Fs", [1, 1, 1, 0, 1, 1, 1]),
        ("Cs", [1, 1, 1, 1, 1, 1, 1]),
        ("F",  [0, 0, 0, -1, 0, 0, 0]),
        ("Bb", [-1, 0, 0, -1, 0, 0, 0]),
        ("Eb", [-1, 0, 0, -1, -1, 0, 0]),
        ("Ab", [-1, -1, 0, -1, -1, 0, 0]),
        ("Db", [-1, -1, 0, -1, -1, -1, 0]),
        ("Gb", [-1, -1, -1, -1, -1, -1, 0]),
        ("Cb", [-1, -1, -1, -1, -1, -1, -1])
       ]


-- TODO: fix clunky usage: apply_key (snd(keys!!0)) (snd(modes!!0))
apply_key :: [Integer] -> [Integer] -> [Integer]
apply_key a b = zipWith (+) a b  

