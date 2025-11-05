-- Simple Lua code for learning AST parsing

-- A basic function
function add(a, b)
    return a + b
end

-- Function with local variables
function calculate_circle(radius)
    local pi = 3.14159
    local area = pi * radius * radius
    local circumference = 2 * pi * radius
    return area, circumference
end

-- Function that builds a table
function make_person(name, age, city)
    local person = {
        name = name,
        age = age,
        city = city,
        is_adult = age >= 18
    }
    return person
end

-- Function with array-style table
function make_point(x, y, z)
    return {x, y, z}
end

-- Function with nested table
function make_config(host, port)
    return {
        server = {
            host = host,
            port = port
        },
        timeout = 30
    }
end

-- Function with conditionals
function classify_age(age)
    local category
    if age < 13 then
        category = "child"
    elseif age < 20 then
        category = "teenager"
    else
        category = "adult"
    end
    return category
end

-- Function with a loop
function sum_numbers(n)
    local total = 0
    for i = 1, n do
        total = total + i
    end
    return total
end
