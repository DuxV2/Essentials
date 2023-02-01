local Knit = game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit")
local KnitClient = require(Knit:WaitForChild("KnitClient"))

local CreateController = KnitClient.CreateController
local GetService = KnitClient.GetService

local Controllers = getupvalue(CreateController, 1)
local Services = getupvalue(GetService, 1)

local KnitLib = {}; do
    function KnitLib:DumpServices(Callback)
        table.foreach(Services, Callback)
    end

    function KnitLib:DumpServiceContents(Service, Callback)
        table.foreach(Services[Service], Callback)
    end

    function KnitLib:DumpControllers(Callback)
        table.foreach(Controllers, Callback)
    end

    function KnitLib:DumpControllerContents(Controller, Callback)
        table.foreach(Controllers[Controller], Callback)
    end
end
return KnitLib
