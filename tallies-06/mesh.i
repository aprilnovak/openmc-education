pitch = ${fparse 0.63*2}

[Mesh]
  [pin]
    type = PolygonConcentricCircleMeshGenerator
    num_sides = 4
    num_sectors_per_side = '8 8 8 8'
    ring_radii = '0.39218 0.4572'
    ring_intervals = '5 2'
    polygon_size = ${fparse 0.63}
    polygon_size_style = apothem
  []
  [rotate]
    type = TransformGenerator
    input = pin
    transform = rotate
    vector_value = '0 0 45'
  []
  [translate]
    type = TransformGenerator
    input = rotate
    transform = translate
    vector_value = '${pitch} 0 0'
  []
  [extrude]
    type = AdvancedExtruderGenerator
    input = translate
    direction = '0 0 1'
    heights = '100.0'
    num_layers = '10.0'
  []
[]
