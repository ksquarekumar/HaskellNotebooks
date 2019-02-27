import Graphics.Gloss.Data.Point
import Graphics.Gloss.Geometry.Line

data Line = L Point Point

intersectLines (L a b) (L c d) = intersectLineLine a b c d