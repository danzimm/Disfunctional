//  Copyright (c) 2015 Dan Zimmerman. All rights reserved.

func <?> <T, U>(f: T -> U, x: T?) -> U? {
  return x.map(f)
}

func <~> <T, U, V>(f: U -> V, g: T -> U) -> T -> V {
  return { f(g($0)) }
}

func <~> <T, U, V, W>(f: V -> W, g: (T, U) -> V) -> (T, U) -> W {
  return { f(g($0, $1)) }
}

func <*> <T, U>(f: (T -> U)?, x: T?) -> U? {
  if let ff = f, xx = x {
    return ff(xx)
  }
  return nil
}

func <*> <T, U>(f: (T -> U)?, x: T) -> U? {
  if let ff = f {
    ff(x)
  }
  return nil
}

func |> <T, U>(x: T, f: T -> U) -> U {
  return f(x)
}

func <| <T, U>(f: T -> U, x: T) -> U {
  return f(x)
}

// unsure on precedence right meow
infix operator <*> { associativity left precedence 90 }
infix operator <~> { associativity left precedence 95 }
infix operator <?> { associativity left precedence 95 }
infix operator <| { associativity left precedence 100 }
infix operator |> { associativity left precedence 100 }
