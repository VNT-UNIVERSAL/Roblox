local VNT = {Settings=true}
local KEYLESS = math.random(5,7)
VNT[KEYLESS] = {} 
function SettingsVNT(Window)
local VFX = VNT[KEYLESS]
Cmd = Window:AddTab({ Title = "Termiral", Icon = "termiral" })
    local SearchCMD = Cmd:AddParagraph({
        Title = "Search",
        Content = "Commands: Not Only"
    })
    local CMDTable = {}
    table.insert(CMDTable, { Command = "Rejoin", Description = "Teleport back to the current place." })
    table.insert(CMDTable, { Command = "CJob", Description = "Copy Job to Server." })
    local Commands = Cmd:AddInput("gf", {
        Title = "CMD",
        Default = "_",
        Placeholder = "Enter command",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            local similarCommands = {}
            for _, cmd in ipairs(CMDTable) do
                if string.find(cmd.Command, Value) then
                    table.insert(similarCommands, cmd.Command) 
                end
            end
    
            if #similarCommands > 0 then
                SearchCMD:SetDesc("Commands: " .. table.concat(similarCommands, ", "))
            else
                SearchCMD:SetDesc("Command not found")
            end
            _G.CMDG = Value
        end
    })
    
    function CMD(commandString)
        if commandString == 'Rejoin' or commandString == 'RCG' then -- Handle similar commands
            print("Rejoining!")
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        elseif commandString == 'CJob' then
            setclipboard(tostring(game.JobId))
        else
            warn("Invalid command: " .. commandString) 
        end
    end
    
    Cmd:AddButton({
        Title = "Run CMD",
        Description = "Execute the entered command",
        Callback = function()
            CMD(_G.CMDG)
        end
    })

Preview = Window:AddTab({ Title = "Buy/Soucre", Icon = "store" })
Preview:AddParagraph({
    Title = "email : vlr.ctcp@gmail.com",
    Content = "Send To Email or"
})
Preview:AddParagraph({
    Title = "Discord : "..GETLINKDISCORD(),
    Content = "Join Discord"
})
end
