import std/strformat


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

      let ir = int(255.999*r)
      let ig = int(255.999*g)
      let ib = int(255.999*b)
      f.write(&"{ir} {ig} {ib}\n")

when isMainModule:
  main()
