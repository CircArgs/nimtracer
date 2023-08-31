import std/strformat

import color
import vec3

const image_width = 256
const image_height = 256

proc main = 
  let f = open("image.ppm", fmWrite)
  defer: f.close()
  f.write(&"P3\n{image_width} {image_height}\n255\n")

  for j in 0..image_height-1:
    for i in 0..image_width-1:
      let r = i/(image_width-1)
      let g = j/(image_height-1)
      let b = 0.0
      let c = Color(r:r,g:g,b:b)
      c.write(f)


when isMainModule:
  main()
