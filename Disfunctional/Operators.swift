//  Copyright (c) 2015 Dan Zimmerman. All rights reserved.

public func <?> <T, U>(f: T -> U, x: T?) -> U? {
  return x.map(f)
}

public func <~> <T, U, V>(f: U -> V, g: T -> U) -> T -> V {
  return { f(g($0)) }
}

public func <~> <T, U, V, W>(f: V -> W, g: (T, U) -> V) -> (T, U) -> W {
  return { f(g($0, $1)) }
}

public func <*> <T, U>(f: (T -> U)?, x: T?) -> U? {
  if let ff = f, xx = x {
    return ff(xx)
  }
  return nil
}

public func <*> <T, U>(f: (T -> U)?, x: T) -> U? {
  if let ff = f {
    ff(x)
  }
  return nil
}

public func |> <T, U>(x: T, f: T -> U) -> U {
  return f(x)
}

public func <| <T, U>(f: T -> U, x: T) -> U {
  return f(x)
}

// Highest precedence, function application (applicatively even) comes first here
infix operator <*> { associativity left precedence 160 }
// Same precedence as &
infix operator <~> { associativity left precedence 150 }
// Same precedence as &&
infix operator <?> { associativity left precedence 120 }
// Lower precedence than most other operators so as to transform a function before calling it
infix operator <| { associativity left precedence 100 }
infix operator |> { associativity left precedence 100 }
