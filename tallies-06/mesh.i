[Mesh]
  [pin]
    type = PolygonConcentricCircleMeshGenerator
    num_sides = 4
    num_sectors_per_side = '8 8 8 8'
    ring_radii = '0.39218 0.4572'
    ring_intervals = '2 2'
    polygon_size = ${fparse 0.63}
    polygon_size_style = apothem
  []
  [rotate]
    type = TransformGenerator
    input = pin
    transform = rotate
    vector_value = '0 0 45'
  []
[]
