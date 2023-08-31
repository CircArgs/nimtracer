import std/strformat

type
    Color* = object
        r*,g*,b*: float32

proc write*(c: Color, f: File) =
    let ir = int(255.999*c.r)
    let ig = int(255.999*c.g)
    let ib = int(255.999*c.b)
    f.write(&"{ir} {ig} {ib}\n")

