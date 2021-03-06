//  Copyright (c) 2015 Dan Zimmerman. All rights reserved.

// flip in other contexts, drawing on the idea of a permutation cycle
public func cycle<T, U, V>(f: (T, U) -> V) -> (U, T) -> V { return { f($1, $0) } }
public func cycleinv<T, U, V>(f: (T, U) -> V) -> (U, T) -> V { return cycle(f) }

public func cycle<T, U, V, W>(f: (T, U, V) -> W) -> (V, T, U) -> W {
  return { (v, t, u) in f(t, u, v) }
}
public func cycleinv<T, U, V, W>(f: (T, U, V) -> W) -> (U, V, T) -> W {
  return { (u, v, t) in f(t, u, v) }
}
public func cycle<T, U, V, W, X>(f: (T, U, V, W) -> X) -> (W, T, U, V) -> X {
  return { (w, t, u, v) in f(t, u, v, w) }
}
public func cycleinv<T, U, V, W, X>(f: (T, U, V, W) -> X) -> (U, V, W, T) -> X {
  return { (u, v, w, t) in f(t, u, v, w) }
}
