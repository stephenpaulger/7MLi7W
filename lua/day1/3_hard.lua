function reduce(max, init, f)
    local r
    r = init
    for i = 1, max do
        r = f(r, i)
    end
    return r
end

function add(previous, next)
    return previous + next
end

-- add the numbers from 1 to 5
print("reduce(5, 0, add) =", reduce(5, 0, add))


-- implement factorial in terms of reduce()
function factorial(num)
    local function product(a, b)
        return a * b
    end
    return reduce(num, 1, product)
end

print("factorial(4) =", factorial(4))