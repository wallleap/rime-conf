-- 用户习惯学习模块
-- 记录用户选择，动态调整词频

local user_learning = {}

-- 用户选择记录
local user_choices = {}

-- 记录用户选择
function user_learning.record_choice(input, candidate, index)
    local key = input .. ":" .. candidate
    if not user_choices[key] then
        user_choices[key] = {count = 0, last_used = 0}
    end
    user_choices[key].count = user_choices[key].count + 1
    user_choices[key].last_used = os.time()
    
    -- 根据使用频率调整权重
    local weight = math.min(user_choices[key].count * 2, 50)
    return weight
end

-- 获取用户偏好权重
function user_learning.get_weight(input, candidate)
    local key = input .. ":" .. candidate
    if user_choices[key] then
        -- 考虑使用频率和最近使用时间
        local time_factor = math.max(1, (os.time() - user_choices[key].last_used) / 86400)
        return user_choices[key].count / time_factor
    end
    return 0
end

-- 清理过期记录
function user_learning.cleanup()
    local current_time = os.time()
    local expire_time = 30 * 86400 -- 30天过期
    
    for key, data in pairs(user_choices) do
        if current_time - data.last_used > expire_time then
            user_choices[key] = nil
        end
    end
end

return user_learning