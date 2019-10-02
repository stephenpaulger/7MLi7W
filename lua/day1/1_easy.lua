function ends_in_3(num)
    -- returns true if the final digit of num is 3, and false otherwise
    return num % 10 == 3
end


function is_prime(num)
    max_i = math.sqrt(num)
    for i = 2, max_i do
        if num % i == 0 then
            return false
        end
    end
    return true
end

function print_prime_table(num)
    for i = 1, num do
        if is_prime(i) then
            io.write(string.format("%3d", i))
        else
            io.write("   ")
        end
        if i % 10 == 0 then
            io.write("\n")
        end
    end
end

function primes_ending_3(num)
    for i = 1, num do
        if ends_in_3(i) and is_prime(i) then
            print(i)
        end
    end
end

primes_ending_3(100)