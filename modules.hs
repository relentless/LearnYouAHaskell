import Data.List
import qualified Data.Map as Map

func list = filter (> 2) list

getItem x = Map.lookup x (Map.fromList [(1,"hi"), (2, "mum")])