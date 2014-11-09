(1...1000).to_a.select {|i| i%3 == 0 || i%5 == 0}.inject(:+)
