-- true  = λa. λb. a
-- false = λa. λb. b

local TRUE  = function(a) return function(b) return a end end
local FALSE = function(a) return function(b) return b end end

-- NOT = λp. p FALSE TRUE
local NOT = function(p)
    return p(FALSE)(TRUE)
end

print(NOT(TRUE)("T")("F"))   -- F
print(NOT(FALSE)("T")("F"))  -- T
