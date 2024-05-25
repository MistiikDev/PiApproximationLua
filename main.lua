-- Monte Carlo Pi Approximation
local Parent = script.Parent

local function SpawnSquareAt(x, y, z, colour, parent)
	local part = Instance.new("Part")
	part.BrickColor = BrickColor.new(colour)
	part.Size = Vector3.new(0.1, 0.1, 0.1)
	part.Position = Vector3.new(x, y, z)
	part.Parent = parent
	part.Anchored = true
	part.Material = Enum.Material.Grass
end

local function Estimation(Range, Precision)
	local xp, yp, zp = Parent.Position.X, Parent.Position.Y, Parent.Position.Z
	local xs, ys, zs = Parent.Size.X, Parent.Size.Y, Parent.Size.Z

	local Pi = 0
	local N = 0

	for i = 1, Range do
		local x = xp - xs / 2
		local y = math.random((yp - ys / 2) * Precision, (yp + ys / 2) * Precision) / Precision
		local z = math.random((zp - zs / 2) * Precision, (zp + zs / 2) * Precision) / Precision
		local colour = Color3.new(1, 0, 0)  -- Set default color to red, outside case init

		local distance = math.sqrt((y - yp)^2 + (z - zp)^2)

		if distance <= ys / 2 then  -- Check if point is inside the circle
			colour = Color3.new(0, 1, 0)  -- Set color to green, inside the circle
			N = N + 1
		end

		SpawnSquareAt(x, y, z, colour, Parent)
		
		Pi = (4 * N) / Range -- Estimated to a forth of the circle area. Multiply by 4 to comeback to pi (x^2 + y^2 on a forth)
		Parent.Pi.Value = Pi
	end
end

Estimation(100000, 1000)
