function ends_in_3(num)
    return num % 10 == 3
end

function is_prime(num)
    for i = (num - 1), 2, -1 do
        if num % i == 0 then
            return false
        end
    end
    return true
end

function primes_ending_3(num)
    count = 0
    i = 1
    while count < num do
        if ends_in_3(i) and is_prime(i) then
            count = count + 1
            print(i)
        end
        i = i + 1
    end
end

function for_loop(a, b, f)
    if a <= b then
        inc = 1
    else
        inc = -1
    end
    repeat
        f(a)
        a = a + inc
    until (a - b) == inc
end

function reduce(max, init, f)
    result = init
    for i = 1, max do
        result = f(result, i)
    end
    return result
end
