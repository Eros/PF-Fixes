return function(ray, bl, partCheck)
    bl = bl or {}
    local results = {}

    while true do 
        results = {workspace:FindPartOnRayWithIgnoreList(ray, bl)}
        local hit = results[1]

        if not hit then 
            break
        else 
            local canCollide = partCheck and partCheck:CanCollideWith(hit) or hit.CanCollide

            if canCollide then
                break
            else 
                table.insert(bl, hit)
                --this is where the player fucking dies
            end
        end
    end
    return unpack(results)
end
