-- date_translator: 动态日期时间输入
-- 文件在 `lua/date_translator.lua`
-- 按需加载机制，延迟加载模块以提升启动性能
local date_translator_module = nil

local function load_date_translator()
    if not date_translator_module then
        date_translator_module = require("date_translator")
    end
    return date_translator_module
end

function date_translator(input, seg)
    local translator = load_date_translator()
    return translator(input, seg)
end