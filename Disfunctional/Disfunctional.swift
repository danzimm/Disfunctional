//  Copyright (c) 2015 Dan Zimmerman. All rights reserved.

public func const<T, U>(val: U) -> T -> U { return { x in val } }
public func const<T, U, V>(f: U -> V, val: U) -> T -> V { return { x in f(val) } }

public func id<T>(val: T) -> T { return val }
