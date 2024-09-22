local replicated = game:GetService("ReplicatedStorage")

local event = replicated:WaitForChild("TalkEvent")

for _, v in pairs(script.Parent:GetChildren()) do
	if v:IsA("Model") and v:FindFirstChild("Humanoid") then
		local hrp = v:WaitForChild("HumanoidRootPart")
		local head = v:WaitForChild("Head")

		local module = require(v.Info)

		local prompt = Instance.new("ProximityPrompt")
		prompt.Parent = hrp

		prompt.ActionText = "Talk"
		prompt.ObjectText = v.Name
		prompt.RequiresLineOfSight = false

		prompt.Triggered:Connect(function(player)
			if module.CameraDistance then
				event:FireClient(
					player,
					v,
					module,
					CFrame.new(head.Position + head.CFrame.LookVector * module.CameraDistance, head.Position)
				)
			else
				event:FireClient(player, v, module)
			end
		end)
	end
end
