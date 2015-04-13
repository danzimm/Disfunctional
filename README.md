
# Disfunctional

This is a library with assorted operators and things in order to help one
functionally program in Swift. Just a few nice things are:

- Functions for currying
- Functions for cycling (or known as flipping with a function with two variables)
- `const`, `id`, the `Box` type with `boxup` and `unbox` functions
- `pure`, `flatten` `??` (or aka `getOrElse` in Scala) for Optionals
- Operators to map over an optional, compose functions
- Applicative functor operators for functions (i.e. `<*>` applys a `function?` to a value - value can be optional itself)
- Application operators (i.e. `f <| x === f(x)`)
- Empty type (called `Disregard`) that can be used for various purposes

# PRs

I am definitely open to PRs and would love help improving this!

