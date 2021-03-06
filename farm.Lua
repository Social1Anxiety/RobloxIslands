local player = game.Players.LocalPlayer
local char = player.Character
local human = char.HumanoidRootPart
local island

local harvestedTotal = Instance.new("NumberValue")

for _, v in pairs(game:GetService("Workspace").Islands:GetDescendants()) do
    if v.Name == tostring(player.UserId) then
        island = v.Parent.Parent
    end
end

print("Found UserID:", player.UserId, "in", island.Owners:FindFirstChild(tostring(player.UserId)):GetFullName())

local Blocks = island.Blocks

local function waterSeed(Seed)
    if getgenv().waterSeed == true then
    local args = {
        [1] = {
            ["block"] = Seed
        }
    }
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_WATER_BLOCK:InvokeServer(
        unpack(args)
    )
    end
end

local function harvestSeed(Seed)
    if getgenv().harvestSeed == true then
    local args = {
        [1] = {
            ["player"] = player,
            ["player_tracking_category"] = "join_from_web",
            ["model"] = Seed
        }
    }
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_HARVEST_CROP_REQUEST:InvokeServer(
        unpack(args)
    )
    end
end

local function placeSeed(Seed)
    if getgenv().replaceSeed == true then
    local args = {
        [1] = {
            ["upperBlock"] = false,
            ["cframe"] = CFrame.new(Seed.Position, Seed.Position),
            ["player_tracking_category"] = "join_from_web",
            ["blockType"] = tostring(Seed)
        }
    }
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer(
        unpack(args)
    )
    end
end

local function fastHarvest(Seed)
    if getgenv().FastHarvest == true then
    local args = {
        [1] = {
            ["player"] = player,
            ["player_tracking_category"] = "join_from_web",
            ["model"] = Seed
        }
    }
    game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_HARVEST_CROP_REQUEST:InvokeServer(
        unpack(args)
    )
    end
end

local function cratePacker2(Seed)
    if getgenv().AutoCratePacker == true then
    for i, v in pairs(player.Backpack:GetChildren()) do
        if v.Name:find(tostring(Seed)) and not v.Name:find(tostring("Seeds")) then
            for count = 1, v.Amount.Value do
                local args = {
                    [1] = {
                        ["player_tracking_category"] = "join_from_web",
                        ["tool"] = v,
                        ["amount"] = 1
                    }
                }
                game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_DROP_TOOL_REQUEST:InvokeServer(
                    unpack(args)
                )
                for i, v in pairs(island.Drops:GetChildren()) do
                    if v:IsA("Tool") and v.Name:find("crate") then
                        human.CFrame = v.HandleDisabled.CFrame
                        local args = {
                            [1] = {
                                ["tool"] = v,
                                ["player_tracking_category"] = "join_from_web"
                            }
                        }
                        game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_TOOL_PICKUP_REQUEST:InvokeServer(
                            unpack(args)
                        )
                        if getgenv().SellCrates == true then
                            local args = {
                                [1] = {
                                    ["merchant"] = "wholesaler",
                                    ["offerId"] = 170,
                                    ["amount"] = 1
                                }
                            }

                            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.CLIENT_MERCHANT_ORDER_REQUEST:InvokeServer(
                                unpack(args)
                            )
                        end
                    elseif v:IsA("Tool") and v.Name:find(tostring(Seed)) then
                        v.HandleDisabled.CFrame = Blocks.cratePackerIndustrial2.Processor.Input.CFrame
                    end
                end
            end
        end
    end
end
end

local function Teleport(Seed)
    if getgenv().toggleTeleport == true then
   human.CFrame = Seed.CFrame
        end
end

local function HarvestAndPlant(Seed)
    for i, v in pairs(Blocks:GetChildren()) do
        if v.Name == Seed then
            for _, Seeds in pairs(v:GetChildren()) do
                if Seeds.Name == "stage-3" then
                    Seed = v
                    if getgenv().StartFarm == true and Seed then
                        spawn(function()
                        print("Auto farm", Seed, "is on")
                        Teleport(Seed)
                        print("Teleporting to", Seed)
                        fastHarvest(Seed)
                        print("Harvesting", Seed)
                        placeSeed(Seed)
                        print("Replanting", Seed)
                        waterSeed(Seed)
                        print("Watering", Seed)
                        cratePacker2(Seed)
                        print("Depositing", tostring(Seed) .. " into CratePacker2")
                        harvestedTotal.Value = harvestedTotal.Value + 1
                        rconsoleprint("\r" .. tostring(Seed) .. "'s Harvested This Session: " .. harvestedTotal.Value)
                        end)
                    end
                end
            end
        end
    end
end

while getgenv().StartFarm == true do
    task.wait(getgenv().Speed)
    HarvestAndPlant(getgenv().Farmable)
end
