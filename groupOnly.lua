-- Put script in workspace
local groupId = 123456 -- Replace with your group's ID
local kickMessage = "You are not in the required group to join this game." -- Local variable for the kick message
local bypassPlayers = {123, 456, 789} -- Replace with the user IDs of the players who can bypass the group check

game.Players.PlayerAdded:Connect(function(player)
    if table.find(bypassPlayers, player.UserId) then
        print(player.Name .. " is allowed to bypass the group check.")
    elseif player:IsInGroup(groupId) then
        print(player.Name .. " is in the group and allowed to join.")
    else
        player:Kick(kickMessage)
    end
end)
