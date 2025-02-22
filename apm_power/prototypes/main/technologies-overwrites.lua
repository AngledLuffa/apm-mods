require('util')
require('__apm_lib_ldinc__.lib.log')

local self = 'apm_power/prototypes/main/technologies-overwrites.lua'

APM_LOG_HEADER(self)

apm.lib.utils.technology.force.recipe_for_unlock('apm_stone_bricks', 'stone-brick')
apm.lib.utils.technology.add.prerequisites('stone-walls', 'apm_stone_bricks')

apm.lib.utils.technology.force.recipe_for_unlock('landfill', 'apm_landfill')

apm.lib.utils.technology.add.science_pack('logistics', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('logistics', 'automation-science-pack', 1)
apm.lib.utils.technology.force.recipe_for_unlock('logistics', 'transport-belt')
apm.lib.utils.technology.mod.unit_count('logistics', 10)
apm.lib.utils.technology.force.prerequisites('logistics', 'apm_rubber-1')

apm.lib.utils.technology.force.recipe_for_unlock('apm_water_supply-1', 'pipe')
apm.lib.utils.technology.force.recipe_for_unlock('apm_water_supply-1', 'pipe-to-ground')
apm.lib.utils.technology.remove.recipe_from_unlock('fluid-handling', 'storage-tank')
apm.lib.utils.technology.force.recipe_for_unlock('apm_stone_bricks', 'storage-tank')

apm.lib.utils.technology.force.recipe_for_unlock('apm_power_steam', 'boiler')

apm.lib.utils.technology.add.science_pack('turrets', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('turrets', 'automation-science-pack', 1)

apm.lib.utils.technology.add.science_pack('stone-walls', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('stone-walls', 'automation-science-pack', 1)
apm.lib.utils.technology.mod.unit_count('stone-walls', 20)

apm.lib.utils.technology.add.science_pack('military', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('military', 'automation-science-pack', 1)

apm.lib.utils.technology.add.prerequisites('steel-processing', 'apm_puddling_furnace_0')
apm.lib.utils.technology.add.prerequisites('steel-processing', 'apm_power_automation_science_pack')
apm.lib.utils.technology.remove.recipe_from_unlock('steel-processing', 'steel-plate')

apm.lib.utils.technology.add.science_pack('steel-axe', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('steel-axe', 'automation-science-pack')
apm.lib.utils.technology.force.prerequisites('steel-axe', 'apm_puddling_furnace_0')

apm.lib.utils.technology.add.science_pack('railway', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.add.science_pack('railway', 'apm_steam_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('railway', 'automation-science-pack')
apm.lib.utils.technology.remove.science_pack('railway', 'logistic-science-pack')
apm.lib.utils.technology.force.prerequisites('railway', {'apm_puddling_furnace_0', 'apm_power_steam', 'apm_treated_wood_planks-1'})

apm.lib.utils.technology.add.science_pack('automated-rail-transportation', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.add.science_pack('automated-rail-transportation', 'apm_steam_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('automated-rail-transportation', 'automation-science-pack')
apm.lib.utils.technology.remove.science_pack('automated-rail-transportation', 'logistic-science-pack')

apm.lib.utils.technology.add.prerequisites('rail-signals', 'apm_power_electricity')
--apm.lib.utils.technology.add.science_pack('rail-signals', 'apm_industrial_science_pack', 1)
--apm.lib.utils.technology.add.science_pack('rail-signals', 'apm_steam_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('rail-signals', 'logistic-science-pack')

apm.lib.utils.technology.force.recipe_for_unlock('apm_power_electricity', 'steam-engine')
apm.lib.utils.technology.force.recipe_for_unlock('apm_power_electricity', 'small-electric-pole')
apm.lib.utils.technology.force.recipe_for_unlock('apm_power_electricity', 'electronic-circuit')
apm.lib.utils.recipe.disable('electric-mining-drill')
apm.lib.utils.recipe.disable('offshore-pump')

apm.lib.utils.technology.add.prerequisites('automation', 'apm_power_electricity')
apm.lib.utils.technology.add.science_pack('automation', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.add.science_pack('automation', 'apm_steam_science_pack', 1)
apm.lib.utils.technology.force.recipe_for_unlock('automation', 'inserter')
apm.lib.utils.technology.mod.unit_count('automation', 75)
apm.lib.utils.technology.mod.unit_time('automation', 30)

apm.lib.utils.technology.add.prerequisites('optics', 'apm_power_electricity')
--apm.lib.utils.technology.add.science_pack('optics', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.mod.unit_count('optics', 50)
apm.lib.utils.technology.mod.unit_time('optics', 25)

apm.lib.utils.technology.add.prerequisites('logistic-science-pack', 'automation')
--apm.lib.utils.technology.add.science_pack('logistic-science-pack', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.force.recipe_for_unlock('logistic-science-pack', 'lab')

apm.lib.utils.technology.force.recipe_for_unlock('military-2', 'radar')

apm.lib.utils.technology.add.prerequisites('heavy-armor', 'apm_puddling_furnace_0')
apm.lib.utils.technology.remove.prerequisites('heavy-armor', 'steel-processing')
apm.lib.utils.technology.add.science_pack('heavy-armor', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('heavy-armor', 'automation-science-pack', 1)

apm.lib.utils.technology.add.science_pack('weapon-shooting-speed-1', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('weapon-shooting-speed-1', 'automation-science-pack')
apm.lib.utils.technology.add.science_pack('physical-projectile-damage-1', 'apm_industrial_science_pack', 1)
apm.lib.utils.technology.remove.science_pack('physical-projectile-damage-1', 'automation-science-pack')

apm.lib.utils.technology.add.prerequisites('weapon-shooting-speed-2', 'logistic-science-pack')
apm.lib.utils.technology.add.prerequisites('physical-projectile-damage-2', 'logistic-science-pack')

apm.lib.utils.technology.force.recipe_for_unlock('uranium-processing', 'apm_coal_ash_washing')

apm.lib.utils.technology.add.prerequisites('braking-force-3', 'production-science-pack')
apm.lib.utils.technology.add.prerequisites('inserter-capacity-bonus-4', 'production-science-pack')
apm.lib.utils.technology.add.prerequisites('research-speed-5', 'production-science-pack')
apm.lib.utils.technology.add.prerequisites('worker-robots-storage-2', 'production-science-pack')

apm.lib.utils.technology.add.prerequisites('energy-weapons-damage-5', 'utility-science-pack')
apm.lib.utils.technology.add.prerequisites('laser-shooting-speed-5', 'utility-science-pack')
apm.lib.utils.technology.add.prerequisites('physical-projectile-damage-6', 'utility-science-pack')
apm.lib.utils.technology.add.prerequisites('refined-flammables-4', 'utility-science-pack')
apm.lib.utils.technology.add.prerequisites('stronger-explosives-4', 'utility-science-pack')
apm.lib.utils.technology.add.prerequisites('weapon-shooting-speed-6', 'utility-science-pack')
apm.lib.utils.technology.add.prerequisites('worker-robots-speed-3', 'utility-science-pack')

apm.lib.utils.technology.add.prerequisites('mining-productivity-3', 'production-science-pack')
apm.lib.utils.technology.add.prerequisites('mining-productivity-3', 'utility-science-pack')
