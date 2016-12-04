# p_inspect

Adds `#p_inspect` and `.p_inspect` to every object. This method prints the
object and returns `self`. This makes it so you can print anything without
having to refactor your code.

## Some examples

Debugging things is tricky. Some people (like myself) like to print objects
to see what they look like at runtime. The problem is you often need to change
code to print things out.

Let's say we have some code like this where we want to see what the objects look
like along the way.

```crystal
string = "my-new-string"
  .split("-")
  .map { |word| word.upcase }
  .join("")
```

**Without `p_inspect` you'd need to break the code up like this**

```crystal
string = "my-new-string".split("-")

puts string
string = string.map { |word| word.upcase }
puts string
# ...etc.
```

**With `p_inspect` print objects with minimal modifcation to your code**

```crystal
string = "my-new-string"
  .split("-")
  .p_inspect
  .map { |word| word.upcase }
  .p_inspect
  .join("")
  .p_inspect
```

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  p_inspect:
    github: paulcsmith/p_inspect
```

## Usage

```crystal
require "p_inspect"
```

And then you can call `p_inspect` on object.

## Contributing

1. Fork it ( https://github.com/paulcsmith/p_inspect/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [paulcsmith](https://github.com/paulcsmith) Paul Smith - creator, maintainer
