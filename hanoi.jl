function solvehannoi(num_disks)
    hannoiblist = []
    hannoiclist = []
    a = 0 
    while a < num_disks
        b = a + 1
        c = b + 1
        push!(hannoiblist, b)
        push!(hannoiclist, c)
        a += 1
    end
    return (hannoiblist, hannoiclist)
end

hannoisolved = solvehannoi(64)
println(hannoisolved)
