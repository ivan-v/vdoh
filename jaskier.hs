module Jaskier where
import Euterpea
import Data.Ratio

data Moda { mode_name :: String, notes :: [Int]}
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
		 ]module Jaskier where
import Euterpea
import Data.Ratio

