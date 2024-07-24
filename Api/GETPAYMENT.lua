local VNT = {Settings=true}
local KEYLESS = math.random(5,7)
VNT[KEYLESS] = {} 
function SettingsVNT(Window)
local VFX = VNT[KEYLESS]
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
