function fibonacci(base)
    fibnumbers = []
    p = 0
    while p <= base
        n = 2p - 1
        sum = n + p
        push!(fibnumbers, sum)
        p += 1
    end
    return fibnumbers
end

base_value = 50
result = fibonacci(base_value)
println(result)
