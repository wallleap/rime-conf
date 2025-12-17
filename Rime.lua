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

-- user_learning: 用户习惯学习模块
-- 文件在 `lua/user_learning.lua`
local user_learning_module = nil

local function load_user_learning()
    if not user_learning_module then
        user_learning_module = require("user_learning")
    end
    return user_learning_module
end

function user_learning_translator(input, seg)
    local learning = load_user_learning()
    return learning(input, seg)
end

-- uuid_translator: UUID 生成模块
-- 文件在 `lua/uuid_translator.lua`
local uuid_translator_module = nil

local function load_uuid_translator()
    if not uuid_translator_module then
        uuid_translator_module = require("uuid_translator")
    end
    return uuid_translator_module
end

function uuid_translator(input, seg)
    local uuid_func = load_uuid_translator()
    return uuid_func(input, seg)
end
