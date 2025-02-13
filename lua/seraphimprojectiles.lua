------------------------------------------------------------
--  File     :  /cdimage/lua/seraphimprojectiles.lua
--  Author(s):  Gordon Duclos, Greg Kohne, Matt Vainio, Aaron Lundquist
--  Summary  : Seraphim projectile base class definitions
--  Copyright © 2007 Gas Powered Games, Inc.  All rights reserved.
------------------------------------------------------------

local DefaultProjectileFile = import("/lua/sim/defaultprojectiles.lua")
local SinglePolyTrailProjectile = DefaultProjectileFile.SinglePolyTrailProjectile
local MultiPolyTrailProjectile = DefaultProjectileFile.MultiPolyTrailProjectile
local EffectTemplate = import("/lua/effecttemplates.lua")
local EmitterProjectile = DefaultProjectileFile.EmitterProjectile
local util = import("/lua/utilities.lua")
local RandomInt = util.GetRandomInt
local NukeProjectile = DefaultProjectileFile.NukeProjectile

---  SERAPHIM ANTI-NUKE PROJECTILES
---@class SIFHuAntiNuke : SinglePolyTrailProjectile
SIFHuAntiNuke = ClassProjectile(SinglePolyTrailProjectile) {
    FxImpactTrajectoryAligned = false,
    PolyTrail = EffectTemplate.SKhuAntiNukePolyTrail,
    FxTrails = EffectTemplate.SKhuAntiNukeFxTrails,
    FxImpactProjectile = EffectTemplate.SKhuAntiNukeHit,
}

---  SERAPHIM ANTI-NUKE PROJECTILES
---@class SIFKhuAntiNukeTendril : EmitterProjectile
SIFKhuAntiNukeTendril = ClassProjectile(EmitterProjectile) {
    FxImpactTrajectoryAligned = false,
    FxTrails = EffectTemplate.SKhuAntiNukeHitTendrilFxTrails,
}

---@class SIFKhuAntiNukeSmallTendril : EmitterProjectile
SIFKhuAntiNukeSmallTendril = ClassProjectile(EmitterProjectile) {
    FxImpactTrajectoryAligned = false,
    FxTrails = EffectTemplate.SKhuAntiNukeHitSmallTendrilFxTrails,
}

---  TEMPORARY BASE SERAPHIM PROJECTILE
---@class SBaseTempProjectile : EmitterProjectile
SBaseTempProjectile = ClassProjectile(EmitterProjectile) {
    FxImpactLand = EffectTemplate.AMissileHit01,
    FxImpactNone = EffectTemplate.AMissileHit01,
    FxImpactProjectile = EffectTemplate.ASaintImpact01,
    FxImpactProp = EffectTemplate.AMissileHit01,
    FxImpactUnit = EffectTemplate.AMissileHit01,
    FxTrails = EffectTemplate.SShleoCannonProjectileTrails,
}

---  SERAPHIM CHRONATRON CANNONS
---@class SChronatronCannon : MultiPolyTrailProjectile
SChronatronCannon = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactTrajectoryAligned = false,
    FxImpactLand = EffectTemplate.SChronotronCannonLandHit,
    FxImpactNone = EffectTemplate.SChronotronCannonHit,
    FxImpactProp = EffectTemplate.SChronotronCannonLandHit,
    FxImpactUnit = EffectTemplate.SChronotronCannonUnitHit,
    FxImpactWater = EffectTemplate.SChronotronCannonLandHit,
    FxImpactUnderWater = EffectTemplate.SChronotronCannonHit,
    FxTrails = EffectTemplate.SChronotronCannonProjectileFxTrails,
    PolyTrails = EffectTemplate.SChronotronCannonProjectileTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
}

---  SERAPHIM CHRONATRON CANNONS
---@class SChronatronCannonOverCharge : MultiPolyTrailProjectile
SChronatronCannonOverCharge = ClassProjectile(MultiPolyTrailProjectile) { 
    FxImpactTrajectoryAligned = false,
    FxImpactLand = EffectTemplate.SChronotronCannonOverChargeLandHit,
    FxImpactNone = EffectTemplate.SChronotronCannonOverChargeLandHit,
    FxImpactProp = EffectTemplate.SChronotronCannonOverChargeLandHit,
    FxImpactUnit = EffectTemplate.SChronotronCannonOverChargeUnitHit,
    FxTrails = EffectTemplate.SChronotronCannonOverChargeProjectileFxTrails,
    PolyTrails = EffectTemplate.SChronotronCannonOverChargeProjectileTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
}

--- SACU
---@class SLightChronatronCannon : MultiPolyTrailProjectile
SLightChronatronCannon = ClassProjectile(MultiPolyTrailProjectile) { 
    FxImpactTrajectoryAligned = false,
    FxImpactLand = EffectTemplate.SLightChronotronCannonLandHit,
    FxImpactNone = EffectTemplate.SLightChronotronCannonLandHit,
    FxImpactProp = EffectTemplate.SLightChronotronCannonHit,
    FxImpactUnit = EffectTemplate.SLightChronotronCannonUnitHit,
    PolyTrails = EffectTemplate.SLightChronotronCannonProjectileTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
    FxTrails = EffectTemplate.SLightChronotronCannonProjectileFxTrails,
    FxImpactWater = EffectTemplate.SLightChronotronCannonLandHit,
    FxImpactUnderWater = EffectTemplate.SLightChronotronCannonHit,
}

-- SACU
---@class SLightChronatronCannonOverCharge : MultiPolyTrailProjectile
SLightChronatronCannonOverCharge = ClassProjectile(MultiPolyTrailProjectile) { 
    FxImpactTrajectoryAligned = false,
    FxImpactLand = EffectTemplate.SLightChronotronCannonOverChargeHit,
    FxImpactNone = EffectTemplate.SLightChronotronCannonOverChargeHit,
    FxImpactProp = EffectTemplate.SLightChronotronCannonOverChargeHit,
    FxImpactUnit = EffectTemplate.SLightChronotronCannonOverChargeHit,
    PolyTrails = EffectTemplate.SLightChronotronCannonOverChargeProjectileTrails,
    FxTrails = EffectTemplate.SLightChronotronCannonOverChargeProjectileFxTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
}

---  SERAPHIM PHASIC AUTOGUNS
---@class SPhasicAutogun : MultiPolyTrailProjectile
SPhasicAutogun = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand = EffectTemplate.PhasicAutoGunHit,
    FxImpactNone = EffectTemplate.PhasicAutoGunHit,
    FxImpactProp = EffectTemplate.PhasicAutoGunHitUnit,
    FxImpactUnit = EffectTemplate.PhasicAutoGunHitUnit,
    PolyTrails = EffectTemplate.PhasicAutoGunProjectileTrail,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

-- T2 gunship and T2 transport
---@class SHeavyPhasicAutogun : MultiPolyTrailProjectile
SHeavyPhasicAutogun = ClassProjectile(MultiPolyTrailProjectile) { 
    FxImpactLand = EffectTemplate.HeavyPhasicAutoGunHit,
    FxImpactNone = EffectTemplate.HeavyPhasicAutoGunHit,
    FxImpactProp = EffectTemplate.HeavyPhasicAutoGunHitUnit,
    FxImpactUnit = EffectTemplate.HeavyPhasicAutoGunHitUnit,
    FxImpactWater = EffectTemplate.HeavyPhasicAutoGunHit,
    FxImpactUnderWater = EffectTemplate.HeavyPhasicAutoGunHitUnit,
    PolyTrails = EffectTemplate.HeavyPhasicAutoGunProjectileTrail,
    FxTrails = EffectTemplate.HeavyPhasicAutoGunProjectileTrailGlow,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

-- Adjustment for XSA0203 projectile speed. : T2 gunship
---@class SHeavyPhasicAutogun02 : SHeavyPhasicAutogun
SHeavyPhasicAutogun02 = ClassProjectile(SHeavyPhasicAutogun) {
    PolyTrails = EffectTemplate.HeavyPhasicAutoGunProjectileTrail02,
    FxTrails = EffectTemplate.HeavyPhasicAutoGunProjectileTrailGlow02,
}

---  SERAPHIM OH CANNONS
---@class SOhCannon : MultiPolyTrailProjectile
SOhCannon = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand = EffectTemplate.OhCannonHit,
    FxImpactNone = EffectTemplate.OhCannonHit,
    FxImpactProp = EffectTemplate.OhCannonHitUnit,
    FxImpactUnit = EffectTemplate.OhCannonHitUnit,
    PolyTrails = EffectTemplate.OhCannonProjectileTrail,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---@class SOhCannon02 : MultiPolyTrailProjectile
SOhCannon02 = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand = EffectTemplate.OhCannonHit,
    FxImpactNone = EffectTemplate.OhCannonHit,
    FxImpactProp = EffectTemplate.OhCannonHitUnit,
    FxImpactUnit = EffectTemplate.OhCannonHitUnit,
    PolyTrails = EffectTemplate.OhCannonProjectileTrail02,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
}

---  SERAPHIM SHRIEKER AUTO-CANNONS
---@class SShriekerAutoCannon : MultiPolyTrailProjectile
SShriekerAutoCannon = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand = EffectTemplate.ShriekerCannonHit,
    FxImpactNone = EffectTemplate.ShriekerCannonHit,
    FxImpactProp = EffectTemplate.ShriekerCannonHit,
    FxImpactUnit = EffectTemplate.ShriekerCannonHitUnit,
    PolyTrails = EffectTemplate.ShriekerCannonPolyTrail,
    FxImpactWater = EffectTemplate.ShriekerCannonHit,
    FxImpactUnderWater = EffectTemplate.ShriekerCannonHit,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
}

---  SERAPHIM AIRE-AU BOLTER
--- T2 bot (Ilshavoh) and T3 tank (Othuum)
---@class SAireauBolter : MultiPolyTrailProjectile
SAireauBolter = ClassProjectile(MultiPolyTrailProjectile) { 
    FxImpactLand = EffectTemplate.SAireauBolterHit,
    FxImpactNone = EffectTemplate.SAireauBolterHit,
    FxImpactProp = EffectTemplate.SAireauBolterHit,
    FxImpactUnit = EffectTemplate.SAireauBolterHit,
    FxTrails = EffectTemplate.SAireauBolterProjectileFxTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
    PolyTrails = EffectTemplate.SAireauBolterProjectilePolyTrails,
}

---  SERAPHIM TAU CANNON
--- sera T2 hover tank and T3 tank (othuum)
---@class STauCannon : MultiPolyTrailProjectile
STauCannon = ClassProjectile(MultiPolyTrailProjectile) { 
    FxImpactLand = EffectTemplate.STauCannonHit,
    FxImpactNone = EffectTemplate.STauCannonHit,
    FxImpactProp = EffectTemplate.STauCannonHit,
    FxImpactUnit = EffectTemplate.STauCannonHit,
    FxTrails = EffectTemplate.STauCannonProjectileTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
    PolyTrails = EffectTemplate.STauCannonProjectilePolyTrails,
}

---  SERAPHIM HEAVY QUARNON CANNON
--- Battleship
---@class SHeavyQuarnonCannon : MultiPolyTrailProjectile
SHeavyQuarnonCannon = ClassProjectile(MultiPolyTrailProjectile) { 
    FxImpactLand = EffectTemplate.SHeavyQuarnonCannonLandHit,
    FxImpactNone = EffectTemplate.SHeavyQuarnonCannonHit,
    FxImpactProp = EffectTemplate.SHeavyQuarnonCannonHit,
    FxImpactUnit = EffectTemplate.SHeavyQuarnonCannonUnitHit,
    PolyTrails = EffectTemplate.SHeavyQuarnonCannonProjectilePolyTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
    FxTrails = EffectTemplate.SHeavyQuarnonCannonProjectileFxTrails,
    FxImpactWater = EffectTemplate.SHeavyQuarnonCannonWaterHit,
}

---  SERAPHIM LAANSE TACTICAL MISSILE
--- ACU / SACU / TML /MML
---@class SLaanseTacticalMissile : SinglePolyTrailProjectile
SLaanseTacticalMissile = ClassProjectile(SinglePolyTrailProjectile) { 
    FxImpactLand = EffectTemplate.SLaanseMissleHit,
    FxImpactProp = EffectTemplate.SLaanseMissleHitUnit,
    FxImpactUnit = EffectTemplate.SLaanseMissleHitUnit,
    FxTrails = EffectTemplate.SLaanseMissleExhaust02,
    PolyTrail = EffectTemplate.SLaanseMissleExhaust01,

    ---@param self SLaanseMissileWeapon
    OnCreate = function(self)
        SinglePolyTrailProjectile.OnCreate(self)
        self:SetCollisionShape('Sphere', 0, 0, 0, 1.0)
    end,
}

---  SERAPHIM ZTHUTHAAM ARTILLERY SHELL
---@class SZthuthaamArtilleryShell : MultiPolyTrailProjectile
SZthuthaamArtilleryShell = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand = EffectTemplate.SZthuthaamArtilleryHit,
    FxImpactWater = EffectTemplate.SZthuthaamArtilleryHit,
    FxImpactNone = EffectTemplate.SZthuthaamArtilleryHit,
    FxImpactProp = EffectTemplate.SZthuthaamArtilleryHit,
    FxImpactUnit = EffectTemplate.SZthuthaamArtilleryUnitHit,
    FxTrails = EffectTemplate.SZthuthaamArtilleryProjectileFXTrails,
    PolyTrails = EffectTemplate.SZthuthaamArtilleryProjectilePolyTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---  SERAPHIM SUTHANUS ARTILLERY SHELL
---@class SSuthanusArtilleryShell : EmitterProjectile
SSuthanusArtilleryShell = ClassProjectile(EmitterProjectile) {
    FxImpactTrajectoryAligned = false,
    FxImpactLand = EffectTemplate.SRifterArtilleryHit,
    FxImpactWater = EffectTemplate.SRifterArtilleryWaterHit,
    FxImpactNone = EffectTemplate.SRifterArtilleryHit,
    FxImpactProp = EffectTemplate.SRifterArtilleryHit,
    FxImpactUnderWater = EffectTemplate.SRifterArtilleryWaterHit,
    FxImpactUnit = EffectTemplate.SRifterArtilleryHit,
    FxTrails = EffectTemplate.SRifterArtilleryProjectileFxTrails,
    PolyTrail = EffectTemplate.SRifterArtilleryProjectilePolyTrail,
}

---  SERAPHIM MOBILE SUTHANUS ARTILLERY SHELL
--- This will make ist so that the projectile effects are the in the space of the world
---@class SSuthanusMobileArtilleryShell : SinglePolyTrailProjectile
SSuthanusMobileArtilleryShell = ClassProjectile(SinglePolyTrailProjectile) {
    FxImpactTrajectoryAligned = false,
    FxImpactLand = EffectTemplate.SRifterMobileArtilleryHit,
    FxImpactWater = EffectTemplate.SRifterMobileArtilleryWaterHit,
    FxImpactNone = EffectTemplate.SRifterMobileArtilleryHit,
    FxImpactProp = EffectTemplate.SRifterMobileArtilleryHit,
    FxImpactUnderWater = EffectTemplate.SRifterMobileArtilleryWaterHit,
    FxImpactUnit = EffectTemplate.SRifterMobileArtilleryHit,
    FxTrails = EffectTemplate.SRifterMobileArtilleryProjectileFxTrails,
    PolyTrail = EffectTemplate.SRifterArtilleryProjectilePolyTrail,
}

---  SERAPHIM THUNTHO ARTILLERY SHELL
---@class SThunthoArtilleryShell : MultiPolyTrailProjectile
SThunthoArtilleryShell = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactTrajectoryAligned = false,
    FxImpactLand = EffectTemplate.SThunderStormCannonHit,
    FxImpactNone = EffectTemplate.SThunderStormCannonHit,
    FxImpactProp = EffectTemplate.SThunderStormCannonHit,
    FxImpactUnit = EffectTemplate.SThunderStormCannonHit,
    FxTrails = EffectTemplate.SThunderStormCannonProjectileTrails,
    PolyTrails = EffectTemplate.SThunderStormCannonProjectilePolyTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---@class SThunthoArtilleryShell2 : MultiPolyTrailProjectile
SThunthoArtilleryShell2 = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactTrajectoryAligned = false,
    FxImpactLand = EffectTemplate.SThunderStormCannonLandHit,
    FxImpactWater= EffectTemplate.SThunderStormCannonLandHit,
    FxImpactNone = EffectTemplate.SThunderStormCannonHit,
    FxImpactProp = EffectTemplate.SThunderStormCannonHit,
    FxImpactUnit = EffectTemplate.SThunderStormCannonUnitHit,
    PolyTrails = EffectTemplate.SThunderStormCannonProjectilePolyTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---  SERAPHIM SHLEO AA GATLING ROUND
---@class SShleoAACannon : EmitterProjectile
SShleoAACannon = ClassProjectile(EmitterProjectile) {
    FxImpactAirUnit = EffectTemplate.SShleoCannonUnitHit,
    FxImpactLand = EffectTemplate.SShleoCannonLandHit,
    FxImpactWater = EffectTemplate.SShleoCannonLandHit,
    FxImpactNone = EffectTemplate.SShleoCannonHit,
    FxImpactProp = EffectTemplate.SShleoCannonHit,
    FxImpactUnit = EffectTemplate.SShleoCannonUnitHit,
    PolyTrails = EffectTemplate.SShleoCannonProjectilePolyTrails,

    ---@param self SShleoAACannon
    OnCreate = function(self)
        EmitterProjectile.OnCreate(self)
        local PolytrailGroup = self.PolyTrails[RandomInt(1,table.getn(self.PolyTrails))]
        for k, v in PolytrailGroup do
            CreateTrail(self, -1, self.Army, v)
        end
    end,
}

---  SERAPHIM OLARIS AA ARTILLERY
---@class SOlarisAAArtillery : MultiPolyTrailProjectile
SOlarisAAArtillery = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactAirUnit = EffectTemplate.SOlarisCannonHit,
    FxImpactLand = EffectTemplate.SOlarisCannonHit,
    FxImpactNone = EffectTemplate.SOlarisCannonHit,
    FxImpactProp = EffectTemplate.SOlarisCannonHit,
    FxImpactUnit = EffectTemplate.SOlarisCannonHit,
    FxTrails = EffectTemplate.SOlarisCannonTrails,
    PolyTrails = EffectTemplate.SOlarisCannonProjectilePolyTrail,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2
}

---  SERAPHIM LOSAARE AA CANNON
---@class SLosaareAAAutoCannon : MultiPolyTrailProjectile
SLosaareAAAutoCannon = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand = EffectTemplate.SLosaareAutoCannonHit,
    FxImpactNone= EffectTemplate.SLosaareAutoCannonHit,
    FxImpactProp = EffectTemplate.SLosaareAutoCannonHit,
    FxImpactAirUnit = EffectTemplate.SLosaareAutoCannonHit,
    PolyTrails = EffectTemplate.SLosaareAutoCannonProjectileTrail,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---  SERAPHIM LOSAARE AA CANNON (XSS0303 / XSS0304 ADJUSTMENTS)
---@class SLosaareAAAutoCannon02 : SLosaareAAAutoCannon
SLosaareAAAutoCannon02 = ClassProjectile(SLosaareAAAutoCannon) {
    PolyTrails = EffectTemplate.SLosaareAutoCannonProjectileTrail02,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---  SERAPHIM OTHE TACTICAL BOMB
SOtheTacticalBomb= ClassProjectile(SinglePolyTrailProjectile) {
    FxImpactLand =	EffectTemplate.SOtheBombHit,
    FxImpactNone =	EffectTemplate.SOtheBombHit,
    FxImpactProp =  EffectTemplate.SOtheBombHitUnit,
    FxImpactUnderWater =  EffectTemplate.SOtheBombHit,
    FxImpactUnit =  EffectTemplate.SOtheBombHitUnit,
    FxTrails =  EffectTemplate.SOtheBombFxTrails,
    PolyTrail =  EffectTemplate.SOtheBombPolyTrail,
}

---  SERAPHIM ANA-IT TORPEDO
---@class SAnaitTorpedo : MultiPolyTrailProjectile
SAnaitTorpedo = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactUnderWater =  EffectTemplate.SAnaitTorpedoHit,
    FxUnderWaterHitScale =	1,
    FxImpactUnit =  EffectTemplate.SAnaitTorpedoHit,
    FxImpactNone =  EffectTemplate.SAnaitTorpedoHit,
    FxTrails =  EffectTemplate.SAnaitTorpedoFxTrails,
    PolyTrails =  EffectTemplate.SAnaitTorpedoPolyTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,

    ---@param self SAnaitTorpedo
    ---@param inWater boolean
    OnCreate = function(self, inWater)
        self:SetCollisionShape('Sphere', 0, 0, 0, 1.0)
        MultiPolyTrailProjectile.OnCreate(self, inWater)
    end,
}

---  SERAPHIM HEAVY CAVITATION TORPEDO
---@class SHeavyCavitationTorpedo : MultiPolyTrailProjectile
SHeavyCavitationTorpedo = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand =  EffectTemplate.SHeavyCavitationTorpedoHit,
    FxImpactNone =  EffectTemplate.SHeavyCavitationTorpedoHit,
    FxImpactProp =  EffectTemplate.SHeavyCavitationTorpedoHit,
    FxImpactUnderWater =  EffectTemplate.SHeavyCavitationTorpedoHit,
    FxImpactUnit =  EffectTemplate.SHeavyCavitationTorpedoHit,
    PolyTrails =  EffectTemplate.SHeavyCavitationTorpedoPolyTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,

    ---@param self SAnaitTorpedo
    ---@param inWater boolean
    OnCreate = function(self, inWater)
        self:SetCollisionShape('Sphere', 0, 0, 0, 1.0)
        MultiPolyTrailProjectile.OnCreate(self, inWater)
    end,
}

---  SERAPHIM UALL CAVITATION TORPEDO (SUB LAUNCHED TORPEDO)
---@class SUallCavitationTorpedo : SinglePolyTrailProjectile
SUallCavitationTorpedo = ClassProjectile(SinglePolyTrailProjectile) {
    FxImpactUnderWater =	EffectTemplate.SUallTorpedoHit,
    FxUnderWaterHitScale =	1,
    FxTrails =  EffectTemplate.SUallTorpedoFxTrails,
    PolyTrail =  EffectTemplate.SUallTorpedoPolyTrail,

    ---@param self SAnaitTorpedo
    ---@param inWater boolean
    OnCreate = function(self, inWater)
        self:SetCollisionShape('Sphere', 0, 0, 0, 1.0)
        SinglePolyTrailProjectile.OnCreate(self, inWater)
    end,
}

---  SERAPHIM Inaino STRATEGIC MISSILE
SIFInainoStrategicMissile = ClassProjectile(NukeProjectile, EmitterProjectile) {
    ExitWaterTicks = 9,
    FxExitWaterEmitter = EffectTemplate.DefaultProjectileWaterImpact,
    FxSplashScale = 0.65,
    FxTrailOffset = -0.5,
    FxTrails = {'/effects/emitters/missile_cruise_munition_trail_01_emit.bp',},
    FxUnderWaterTrail = {'/effects/emitters/missile_cruise_munition_underwater_trail_01_emit.bp',},
}

---  SERAPHIM EXPERIMENTAL STRATEGIC MISSILE
SExperimentalStrategicMissile = ClassProjectile(NukeProjectile, MultiPolyTrailProjectile) {
    ExitWaterTicks = 9,
    FxExitWaterEmitter = EffectTemplate.DefaultProjectileWaterImpact,
    FxSplashScale = 0.65,
    FxTrails = EffectTemplate.SIFExperimentalStrategicMissileFXTrails,
    PolyTrails = EffectTemplate.SIFExperimentalStrategicMissilePolyTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
    FxUnderWaterTrail = {'/effects/emitters/missile_cruise_munition_underwater_trail_01_emit.bp',},
}

---  SERAPHIM ELECTRUM TACTICAL MISSILE DEFENSE
---@class SIMAntiMissile01 : MultiPolyTrailProjectile
SIMAntiMissile01 = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand = EffectTemplate.SElectrumMissleDefenseHit,
    FxImpactNone= EffectTemplate.SElectrumMissleDefenseHit,
    FxImpactProjectile = EffectTemplate.SElectrumMissleDefenseHit,
    FxImpactProp = EffectTemplate.SElectrumMissleDefenseHit,
    FxImpactUnit = EffectTemplate.SElectrumMissleDefenseHit,
    PolyTrails = EffectTemplate.SElectrumMissleDefenseProjectilePolyTrail,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---  INAINO EXPERIMENTAL STRATEGIC BOMB
---@class SExperimentalStrategicBomb : SBaseTempProjectile
SExperimentalStrategicBomb = ClassProjectile(SBaseTempProjectile) {
    FxImpactTrajectoryAligned = false,
}

---  INAINO EXPERIMENTAL STRATEGIC BOMB
---@class SIFNukeWaveTendril : EmitterProjectile
SIFNukeWaveTendril = ClassProjectile(EmitterProjectile) {
    FxImpactTrajectoryAligned = false,
}

---  INAINO EXPERIMENTAL STRATEGIC BOMB
---@class SIFNukeSpiralTendril : EmitterProjectile
SIFNukeSpiralTendril = ClassProjectile(EmitterProjectile) {
    FxImpactTrajectoryAligned = false,
}

---  ENERGY BEING 'LASER' PROJECTILE WEAPON
---@class SEnergyLaser : SBaseTempProjectile
SEnergyLaser = ClassProjectile(SBaseTempProjectile) {}

---  T3 BOMBER BOMB WEAPON
---@class SZhanaseeBombProjectile : EmitterProjectile
SZhanaseeBombProjectile = ClassProjectile(EmitterProjectile) {
    FxImpactTrajectoryAligned = false,
    FxTrails = EffectTemplate.SZhanaseeBombFxTrails01,
    FxImpactUnit = EffectTemplate.SZhanaseeBombHit01,
    FxImpactProp = EffectTemplate.SZhanaseeBombHit01,
    FxImpactAirUnit = EffectTemplate.SZhanaseeBombHit01,
    FxImpactLand = EffectTemplate.SZhanaseeBombHit01,
}

---  HOTHE DECOY FLARE PROJECTILE
---@class SAAHotheFlareProjectile : EmitterProjectile
SAAHotheFlareProjectile = ClassProjectile(EmitterProjectile) {
    FxTrails = EffectTemplate.AAntiMissileFlare,
    FxImpactNone = EffectTemplate.AAntiMissileFlareHit,
    FxImpactProjectile = EffectTemplate.AAntiMissileFlareHit,
    FxOnKilled = EffectTemplate.AAntiMissileFlareHit,
    FxUnitHitScale = 0.4,
    FxLandHitScale = 0.4,
    FxWaterHitScale = 0.4,
    FxUnderWaterHitScale = 0.4,
    FxAirUnitHitScale = 0.4,
    FxNoneHitScale = 0.4,
    DestroyOnImpact = false,

    --- We only destroy when we hit the ground/water.
    ---@param self SAAHotheFlareProjectile
    ---@param TargetType ImpactType
    ---@param targetEntity Unit | Prop
    OnImpact = function(self, TargetType, targetEntity)
        if type == 'Terrain' or type == 'Water' then
            EmitterProjectile.OnImpact(self, TargetType, targetEntity)
            if TargetType == 'Terrain' or TargetType == 'Water' or TargetType == 'Prop' then
                if self.Trash then
                    self.Trash:Destroy()
                end
                self:Destroy()
            end
        end
    end,
}

---  SERAPHIM OHWALLI STRATEGIC BOMB PROJECTILE
---@class SOhwalliStrategicBombProjectile : MultiPolyTrailProjectile
SOhwalliStrategicBombProjectile = ClassProjectile(MultiPolyTrailProjectile) {
    FxTrails = EffectTemplate.SOhwalliBombFxTrails01,
    PolyTrails = EffectTemplate.SOhwalliBombPolyTrails,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---  ANJELLU TORPEDO DEFENSE PROJECTILE
---@class SAnjelluTorpedoDefenseProjectile : MultiPolyTrailProjectile
SAnjelluTorpedoDefenseProjectile = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactProjectileUnderWater = EffectTemplate.SDFAjelluAntiTorpedoHit01,
    PolyTrails = EffectTemplate.SDFAjelluAntiTorpedoPolyTrail01,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---  SERAPHIM SNIPER ENERGY RIFLE
---@class SDFSniperShotNormal : MultiPolyTrailProjectile
SDFSniperShotNormal = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand = EffectTemplate.SDFSniperShotNormalHit,
    FxImpactNone = EffectTemplate.SDFSniperShotNormalHit,
    FxImpactProp = EffectTemplate.SDFSniperShotNormalHitUnit,
    FxImpactUnit = EffectTemplate.SDFSniperShotNormalHitUnit,
    PolyTrails = EffectTemplate.SDFSniperShotNormalPolytrail,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---  SERAPHIM SNIPER ENERGY RIFLE
---@class SDFSniperShot : MultiPolyTrailProjectile
SDFSniperShot = ClassProjectile(MultiPolyTrailProjectile) {
    FxImpactLand = EffectTemplate.SDFSniperShotHit,
    FxImpactNone = EffectTemplate.SDFSniperShotHit,
    FxImpactProp = EffectTemplate.SDFSniperShotHitUnit,
    FxImpactUnit = EffectTemplate.SDFSniperShotHitUnit,
    FxTrails = EffectTemplate.SDFSniperShotTrails,
    PolyTrails = EffectTemplate.SDFSniperShotPolytrail,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset2,
}

---  SERAPHIM EXPERIMENTAL PHASON BEAM PROJECTILE
--- ythotha
---@class SDFExperimentalPhasonProjectile : EmitterProjectile
SDFExperimentalPhasonProjectile = ClassProjectile(EmitterProjectile) { 
    FxImpactTrajectoryAligned = false,
    FxTrails = EffectTemplate.SDFExperimentalPhasonProjFXTrails01,
    FxImpactUnit = EffectTemplate.SDFExperimentalPhasonProjHitUnit,
    FxImpactProp = EffectTemplate.SDFExperimentalPhasonProjHit01,
    FxImpactLand = EffectTemplate.SDFExperimentalPhasonProjHit01,
    FxImpactWater = EffectTemplate.SDFExperimentalPhasonProjHit01,
}

--- ythotha
---@class SDFSinnuntheWeaponProjectile : EmitterProjectile
SDFSinnuntheWeaponProjectile = ClassProjectile(EmitterProjectile) { 
    FxTrails = EffectTemplate.SDFSinnutheWeaponFXTrails01,
    FxImpactUnit = EffectTemplate.SDFSinnutheWeaponHitUnit,
    FxImpactProp = EffectTemplate.SDFSinnutheWeaponHit,
    FxImpactLand = EffectTemplate.SDFSinnutheWeaponHit,
    FxImpactWater = EffectTemplate.SDFSinnutheWeaponHit,
}

--- ythotha
---@class SDFAireauProjectile : MultiPolyTrailProjectile
SDFAireauProjectile = ClassProjectile(MultiPolyTrailProjectile) { 
    FxImpactNone = EffectTemplate.SDFAireauWeaponHit01,
    FxImpactUnit = EffectTemplate.SDFAireauWeaponHitUnit,
    FxImpactProp = EffectTemplate.SDFAireauWeaponHit01,
    FxImpactLand = EffectTemplate.SDFAireauWeaponHit01,
    FxImpactWater= EffectTemplate.SDFAireauWeaponHit01,
    RandomPolyTrails = 1,
    PolyTrails = EffectTemplate.SDFAireauWeaponPolytrails01,
    PolyTrailOffset = import("/lua/effecttemplates.lua").DefaultPolyTrailOffset3,
}

-- kept for mod backwards compatibility
local SingleBeamProjectile = DefaultProjectileFile.SingleBeamProjectile
local RandomFloat = import("/lua/utilities.lua").GetRandomFloat