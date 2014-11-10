# self
def fab(n)
  return 1 if [0,1].include?(n);fab(n-2) + fab(n-1)
end

n = 1; sum = 0;
while fab(n) <= 4_000_000
  sum += fab(n) if fab(n).even?
  n += 1
end

# reference : http://kazuph.hateblo.jp/entry/2012/08/30/095229
(0..1/0.0).inject([1,2]) {|fib,i| break fib if fib[i-1]+fib[i] > 4_000_000;fib << fib[i-1] + fib[i]}.select{|i| i.even?}.inject(&:+)
=> 4457918
