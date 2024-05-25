a = { a: { b: "A" } }
c = a[:a]
c[:b] = "C"
puts a