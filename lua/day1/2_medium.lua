function for_loop(a, b, f)
    while a < b do
        f(a)
        a = a + 1
    end
end

function deg_sin(num)
    print(math.sin(math.rad(num)))
end

for_loop(0, 90, deg_sin)