local lista = {"rojo","verde","azul","amarillo","gris","blanco","negro"}
local borrar = {amarillo=true, cafe=true, blanco=true}

local filtrada = {}
for _, v in ipairs(lista) do
    if not borrar[v] then
        table.insert(filtrada, v)
    end
end

for _, v in ipairs(filtrada) do
    print(v)
end
