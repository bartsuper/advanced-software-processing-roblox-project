local players = game:GetService("Players")

players.PlayerAdded:Connect(function(player)
	player:SetAttribute("CareerPathStallPlayed", false)
end)
