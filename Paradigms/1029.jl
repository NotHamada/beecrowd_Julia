global calls = -1

function fib(n)
    global calls
    calls += 1
    if n == 0
        return 0
    elseif n == 1
        return 1
    else
        return fib(n - 1) + fib(n - 2)
    end
end

global tests = parse(Int, readline())
while tests != 0
    global calls = -1
    n = parse(Int, readline())
    fibo = fib(n)
    println("fib($n) = $calls calls = $fibo")
    global tests -= 1
end