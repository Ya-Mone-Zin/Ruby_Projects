a = { a: { b: "A", c: "C" } }
c = a[:a]
c.delete(:c)
puts a
