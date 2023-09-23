function grains(n)
    if n == 0
        return 0
    elseif n == 1
        return 1
    else
        return ((2^(n - 1)) + grains(n - 1))
    end
end

global tests = parse(Int, readline())
while tests != 0
    n = parse(Float64, readline())
    result = floor(Int128, grains(n) / 12000)
    println("$result kg")
    global tests -= 1
end