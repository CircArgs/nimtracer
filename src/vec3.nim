import std/math

type
    Vec3* = object
        x*, y*, z*: float32
    

template `+`*(a,b: Vec3): Vec3 = Vec3(x: a.x+b.x, y: a.y+b.y, z: a.z+b.z)

template `-`*(a,b: Vec3): Vec3 = Vec3(x: a.x-b.x, y: a.y-b.y, z: a.z-b.z)

template `*`*(a,b: Vec3): Vec3 = Vec3(x: a.x*b.x, y: a.y*b.y, z: a.z*b.z)

template `/`*(a,b: Vec3): Vec3 = Vec3(x: a.x/b.x, y: a.y/b.y, z: a.z/b.z)

template `@`*(a,b: Vec3): float32 = a.x*b.x+a.y*b.y+a.z*b.z

template norm_squared*(a: Vec3): float32 = a@a

template norm*(a: Vec3): float32 = sqrt(a@a)

template normalize*(a: Vec3): float32 = a/norm(a)

