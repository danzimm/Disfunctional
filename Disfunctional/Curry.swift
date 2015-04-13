//  Copyright (c) 2015 Dan Zimmerman. All rights reserved.

func curry<T, U, V>(f: (T, U) -> V) -> T -> (U -> V) {
  return { x in
    return { f(x, $0) }
  }
}

func curry<T, U, V, W>(f: (T, U, V) -> W) -> T -> (U -> (V -> W)) {
  return { x in
    return curry { f(x, $0, $1) }
  }
}
func curry<T, U, V, W, X>(f: (T, U, V, W) -> X) -> (T -> (U -> (V -> (W -> X)))) {
  return { x in
    return curry { f(x, $0, $1, $2) }
  }
}

func uncurry<T, U, V>(f: T -> U -> V) -> (T, U) -> V {
  return { f <| $0 <| $1 }
}

func uncurry<T, U, V, W>(f: T -> U -> V -> W) -> (T, U, V) -> W {
  return { f($0)($1)($2) }
}
