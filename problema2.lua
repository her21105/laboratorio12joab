local data = {
    {make="Nokia", model=216, color="Black"},
    {make="Mi Max", model=2, color="Gold"},
    {make="Samsung", model=7, color="Blue"}
}

table.sort(data, function(a, b) 
    return a.model < b.model 
end)

for _, v in ipairs(data) do
    print(v.make, v.model, v.color)
end
