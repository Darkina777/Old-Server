-- servers_old_finder
-- Find the oldest server in a list

local oldestServer = nil
local oldestAge = 9999999999 -- a very large number to start

for _, v in next, game.Workspace:FindAllObjects("BasePlate"):GetChildren() do
    local server = v
    local serverAge = (tickCount() - server.CFrameOriginTime) / 60 / 60 / 24 -- calculate days

    if serverAge < oldestAge then
        oldestAge = serverAge
        oldestServer = server
    end
end

print("The oldest server is: ", oldestServer)
print("Age: ", oldestAge, " days")