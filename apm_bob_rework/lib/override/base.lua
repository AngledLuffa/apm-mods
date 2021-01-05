if apm.bob_rework.lib == nil then apm.bob_rework.lib = {} end
if apm.bob_rework.lib.override == nil then apm.bob_rework.lib.override = {} end
if apm.bob_rework.lib.override.list == nil then apm.bob_rework.lib.override.list = {} end


require('lib.override.machineFrames')
require('lib.override.crushers')
require('lib.override.drop')
require('lib.override.pistions')
require('lib.override.engines')
require('lib.override.inserters')
require('lib.override.assemblers')
require('lib.override.presses')
require('lib.override.cokingPlants')
require('lib.override.labs')
require('lib.override.centrifuges')
require('lib.override.greenhouses')
require('lib.override.steelworks')
require('lib.override.logics')
require('lib.override.steamMachines')
require('lib.override.belts')
require('lib.override.pumps')

apm.bob_rework.lib.override.apply = function ()
    apm.bob_rework.lib.override.drop()
    apm.bob_rework.lib.override.machineFrames()
    apm.bob_rework.lib.override.crushers()
    apm.bob_rework.lib.override.simpleEngines()
    apm.bob_rework.lib.override.inserters()
    apm.bob_rework.lib.override.pistions()
    apm.bob_rework.lib.override.assemblers()
    apm.bob_rework.lib.override.presses()
    apm.bob_rework.lib.override.cokingPlants()
    apm.bob_rework.lib.override.laboratories()
    apm.bob_rework.lib.override.centrifuges()
    apm.bob_rework.lib.override.greenhouses()
    apm.bob_rework.lib.override.logics()
    apm.bob_rework.lib.override.steamMachines()
    apm.bob_rework.lib.override.steelworks()
    apm.bob_rework.lib.override.belts()
    apm.bob_rework.lib.override.pumps()
end

