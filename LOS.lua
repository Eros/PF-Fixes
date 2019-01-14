local Raycast = require(game:GetService("ReplicatedStorage").Raycast)

return function(origin, character, range, bl)
    if typeof(origin) == "Instance" then
        origin = origin.position
    end

    local hit, point = Raycast(Ray.new(origin, (origin - character.HumanoidRootPart.Position).Unit * -range), bl)
    return hit and hit:IsDecendantOf(character), point
end