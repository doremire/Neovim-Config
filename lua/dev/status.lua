-- status.lua
local M = {}

-- ファイルからデータを読み込む
local function read_data()
    local file = io.open("status_data.txt", "r")
    if not file then
        return {
            launches = 0,
            time_spent = 0
        }
    end
    local data = file:read("*a")
    file:close()
    return vim.fn.json_decode(data)
end

-- データをファイルに保存
local function save_data(data)
    local file = io.open("status_data.txt", "w")
    file:write(vim.fn.json_encode(data))
    file:close()
end

-- 起動回数を増やす
function M.increment_launch()
    local data = read_data()
    data.launches = data.launches + 1
    save_data(data)
end

-- 使用時間を更新
function M.update_time(time)
    local data = read_data()
    data.time_spent = data.time_spent + time
    save_data(data)
end

-- 現在のステータスを表示
function M.show_status()
    local data = read_data()
    print("Launches: " .. data.launches)
    print("Time Spent: " .. data.time_spent .. " minutes")
end

return M
