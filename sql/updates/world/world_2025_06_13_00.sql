/* Storyline: Isle of Thunder (Horde) */
-- Thunder Calls
-- The Storm Gathers
UPDATE `quest_template`
SET `NextQuestId` = 32709
WHERE `Id` = 32680;

-- Allies in the Shadows
-- Secrets of Isle of Thunder
-- Setting the Trap
-- Champions of the Thunder King
-- The Assault on Zeb'tula
UPDATE `quest_template`
SET `PrevQuestId` = 32641, `NextQuestId` = 32276
WHERE `Id` = 32212;

-- Tear Down This Wall!
UPDATE `quest_template`
SET `NextQuestId` = 32277
WHERE `Id` = 32276;

-- To the Skies!
-- A Bold Idea
-- The Fall of Shan Bu