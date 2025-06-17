-- Startup error fixes
-- QUESTS
-- Missing RequiredSkillId
UPDATE `quest_template`;
SET `RequiredSkillId` = 185;
WHERE `id` IN (33026,33021,33020,33022,33024,33027,33107,33139) AND `ZoneOrSort` = -304 AND `RequiredSkillId` = 0;

-- Missing SpecialFlag
UPDATE `quest_template`;
SET `SpecialFlags` = 2;
WHERE `id` IN (30470,32640,32641);

-- Remove unneeded credit
-- Honoring a Hero (Alliance)
UPDATE `quest_objective`;
SET `objectId` = 0;
WHERE `questId` = 8149 AND`id` = 284684;

-- Honoring a Hero (Horde)
UPDATE `quest_objective`;
SET `objectId` = 0;
WHERE `questId` = 8150 AND `id` = 284686;

-- Remove obsolete quest
-- Rogues of the Shattered Hand (Horde)
DELETE FROM `quest_template` WHERE `id` = 10794;
DELETE FROM `quest_objective` WHERE `questId` = 10794;
DELETE FROM `quest_poi` WHERE `questId` = 10794;
DELETE FROM `quest_poi_points` WHERE `questId` = 10794;
DELETE FROM `creature_questender` WHERE `quest` = 10794

-- Remove quest that is supposed to be in Legion
-- The Frozen Flame (Alliance)
DELETE FROM `quest_template` WHERE `id` = 11997;

-- Remove object from quest, since this object does not exist and is supposedly only used in "Developer Land"
-- Sotelo's Quest
UPDATE `quest_objective`;
SET `objectId` = 0;
WHERE `questId` = 30759 AND `id` = 272423;

-- Criteria Effects Test Quest
UPDATE `quest_objective`;
SET `objectId` = 0;
WHERE `questId` = 30934 AND `id` = 267730;

-- Beta quest that did not make it to the live servers
-- Raising Spirits
DELETE FROM `quest_template` WHERE `id` = 30974;
DELETE FROM `quest_objective` WHERE `questId` = 30974;
DELETE FROM `quest_poi` WHERE `questId` = 30974;
DELETE FROM `quest_poi_points` WHERE `questId` = 30974;
DELETE FROM `creature_questender` WHERE `quest` = 30974;

-- Test
DELETE FROM `quest_template` WHERE `id` = 31939;
DELETE FROM `quest_objective` WHERE `questId` = 31939;
DELETE FROM `quest_poi` WHERE `questId` = 31939;
DELETE FROM `quest_poi_points` WHERE `questId` = 31939;
DELETE FROM `creature_questender` WHERE `quest` = 31939;

-- Update creature to be set as objectId for battle pet quest
-- Defeat Kela Grimtotem
UPDATE `quest_objective`;
SET `objectId` = 66453;
WHERE `questId` = 31906 AND `id` = 269192;

-- Defeat Zoltan
UPDATE `quest_objective`;
SET `objectId` = 66444;
WHERE `questId` = 31907 AND `id` = 269193;

-- Defeat Elena Flutterfly
UPDATE `quest_objective`;
SET `objectId` = 66414;
WHERE `questId` = 31908 AND `id` = 269194;

-- QUEST OBJECTIVE LOCALES
-- Remove faulty/bad locales
DELETE FROM `quest_objectives_locale`
WHERE (id, locale) IN (
    (267730, 2),
    (267730, 3),
    (267730, 6),
    (267730, 7),
    (267730, 8),
    (269192, 2),
    (269192, 3),
    (269192, 6),
    (269192, 7),
    (269192, 8),
    (269192, 9),
    (269192, 10),
    (269193, 2),
    (269193, 3),
    (269193, 6),
    (269193, 7),
    (269193, 8),
    (269193, 9),
    (269193, 10),
    (269194, 2),
    (269194, 3),
    (269194, 6),
    (269194, 7),
    (269194, 8),
    (269194, 9),
    (269194, 10),
    (270013, 2),
    (270013, 3),
    (270013, 6),
    (270013, 7),
    (270013, 8),
    (270013, 9),
    (270013, 10),
    (270021, 2),
    (270021, 3),
    (270021, 6),
    (270021, 7),
    (270021, 8),
    (270021, 9),
    (270021, 10),
    (270022, 2),
    (270022, 3),
    (270022, 6),
    (270022, 7),
    (270022, 8),
    (270022, 9),
    (270022, 10),
    (270174, 2),
    (270174, 3),
    (270174, 6),
    (270174, 7),
    (270174, 8),
    (270174, 9),
    (270174, 10),
    (270175, 2),
    (270175, 3),
    (270175, 6),
    (270175, 7),
    (270175, 8),
    (270175, 9),
    (270175, 10),
    (270176, 2),
    (270176, 3),
    (270176, 6),
    (270176, 7),
    (270176, 8),
    (270176, 9),
    (270176, 10),
    (270224, 2),
    (270224, 3),
    (270224, 6),
    (270224, 7),
    (270224, 8),
    (270224, 9),
    (270224, 10),
    (270225, 2),
    (270225, 3),
    (270225, 6),
    (270225, 7),
    (270225, 8),
    (270225, 9),
    (270225, 10),
    (270827, 9),
    (272423, 2),
    (272423, 3),
    (272423, 6),
    (272423, 7),
    (272423, 8),
    (272423, 9),
    (272423, 10),
    (280563, 1),
    (280563, 2),
    (280563, 3),
    (280563, 4),
    (280563, 5),
    (280563, 6),
    (280563, 7),
    (280563, 8),
    (280563, 9),
    (280563, 11),
    (280564, 1),
    (280564, 2),
    (280564, 3),
    (280564, 4),
    (280564, 5),
    (280564, 6),
    (280564, 7),
    (280564, 8),
    (280564, 9),
    (280564, 11),
    (284684, 1),
    (284684, 2),
    (284684, 3),
    (284684, 4),
    (284684, 5),
    (284684, 6),
    (284684, 7),
    (284684, 8),
    (284684, 9),
    (284684, 11),
    (284686, 1),
    (284686, 2),
    (284686, 3),
    (284686, 4),
    (284686, 5),
    (284686, 6),
    (284686, 7),
    (284686, 8),
    (284686, 9),
    (284686, 11)
);

-- QUEST RELATIONS
-- Missing quest flag UNIT_NPC_FLAG_QUESTGIVER
-- Inkmaster Wei <Inscription Trainer>
UPDATE `creature_template`;
SET `objectId` = 82;
WHERE `questId` = 56065;

-- Remove custom NPC
-- Isengard Menu
DELETE FROM `creature_template` WHERE `entry` = 190000;