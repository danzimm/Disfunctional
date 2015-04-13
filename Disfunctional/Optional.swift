//  Copyright (c) 2015 Dan Zimmerman. All rights reserved.

public func pure<T>(val: T) -> T? { return val }
public func flatten<T>(val: T??) -> T? {
    if let val_ = val {
        return val_
    }
    return nil
}
