//  Copyright (c) 2015 Dan Zimmerman. All rights reserved.

func pure<T>(val: T) -> T? { return val }
func flatten<T>(val: T??) -> T? {
    if let val_ = val {
        return val_
    }
    return nil
}

func ?? <T>(opt: T?, el: T) -> T {
    if let opt_ = opt {
        return opt_
    }
    return el
}

infix operator ?? { associativity left precedence 100 }
