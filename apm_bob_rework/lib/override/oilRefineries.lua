if apm.bob_rework.lib == nil then apm.bob_rework.lib = {} end
if apm.bob_rework.lib.override == nil then apm.bob_rework.lib.override = {} end
if apm.bob_rework.lib.override.list == nil then apm.bob_rework.lib.override.list = {} end

require('lib.enities.base')
require('lib.tier.base')

local buildOilRefinery = function (recipe, tier, compressor)
    apm.lib.utils.recipe.ingredient.remove_all(recipe)

    apm.lib.utils.recipe.ingredient.mod(recipe, tier.pump, 3 + tier.level*2)
    apm.lib.utils.recipe.ingredient.mod(recipe, compressor, tier.level)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.constructionAlloy, 20)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.heatAlloy, 10)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.pipe, 10)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.heatPipe, 10)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.logic, 20)
    apm.lib.utils.recipe.ingredient.mod(recipe, tier.basement, 40 * tier.basementK)
    apm.lib.utils.recipe.ingredient.mod(recipe, apm.bob_rework.lib.entities.rubber, 10)
end

apm.bob_rework.lib.override.oilRefineries = function ()
    buildOilRefinery('oil-refinery', apm.bob_rework.lib.tier.monel, 'air-pimp')
    buildOilRefinery('oil-refinery-2', apm.bob_rework.lib.tier.steel, 'air-pimp-2')
    buildOilRefinery('oil-refinery-3', apm.bob_rework.lib.tier.aluminium, 'air-pimp-3')
    buildOilRefinery('oil-refinery-4', apm.bob_rework.lib.tier.titanium, 'air-pimp-4')
end