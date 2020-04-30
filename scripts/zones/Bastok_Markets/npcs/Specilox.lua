-----------------------------------
-- Area: Windurst Woods
--  NPC: Arbitrix
-- Gobbie Mystery Box
-- !pos -215.5 0.0 -147.3
-----------------------------------
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/settings")
require("scripts/globals/gobbiemysterybox")
-----------------------------------

local events =
{
    INTRO                   = 6000,
    DEFAULT                 = 6001,
    HOLDING_ITEM            = 6002,
    TRADE                   = 6003,
    BAD_TRADE               = 6004,
    DAILY_COOLDOWN          = 6005,
    HIT_MAX                 = 6006,
    RESULT                  = 6009,
    KEY_TRADE               = 6010,
    NO_THANKS               = 6011,
    FULL_INV                = 6012,
    OTHER_BAD_TRADE         = 6013,
    ITEM_CANNOT_BE_OBTAINED = 6382,
    LIL_BABY                = 6424
}

function onTrigger(player, npc)
    tpz.mystery.onTrigger(player, npc, events)
end

function onEventUpdate(player, csid, option)
    tpz.mystery.onEventUpdate(player, csid, option, events)
end

function onEventFinish(player, csid, option)
    tpz.mystery.onEventFinish(player, csid, options, events)
end