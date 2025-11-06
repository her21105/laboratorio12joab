
local unpack = table.unpack or unpack

local X = {
    {1,2,3},
    {4,5,6},
    {7,8,9}
}

local function transpose(M)
    local rows = #M
    local cols = #M[1]
    local T = {}

    for j = 1, cols do
        T[j] = {}
        for i = 1, rows do
            T[j][i] = M[i][j]
        end
    end
    return T
end

local XT = transpose(X)

for _, row in ipairs(XT) do
    print(unpack(row))
end