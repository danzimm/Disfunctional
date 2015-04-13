//  Copyright (c) 2015 Dan Zimmerman. All rights reserved.

func unbox<T>(val: Box<T>) -> T { return val.value }

func boxup<T>(val: T) -> Box<T> { return Box(val) }
