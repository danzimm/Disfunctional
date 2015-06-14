//  Copyright (c) 2015 Dan Zimmerman. All rights reserved.

public struct Disregard {
  public init() {}
}

public struct Box<T> {
  var value: T
  init(_ val: T) {
    value = val
  }
}

public struct Weak<T: AnyObject> {
  weak var value: T?
  init(_ val: T) {
    value = val
  }
  func valid() -> Bool {
    return value != nil
  }
}
