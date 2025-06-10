-- Quest ID: 33138
-- https://www.wowhead.com/quest=33138
-- Fix questender Lorewalker Cho faction
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 73136;