/* Storyline: Isle of Thunder (Alliance) */
-- Thunder Calls
-- The Storm Gathers
UPDATE `quest_template`
SET `NextQuestId` = 32644
WHERE `Id` = 32681;

-- Allies in the Shadows
-- Secrets of Isle of Thunder
-- Setting the Trap
-- Champions of the Thunder King
-- The Assault on Shaol'mara
UPDATE `quest_template`
SET `PrevQuestId` = 32681, `NextQuestId` = 32654
WHERE `Id` = 32644;

-- Tear Down This Wall!
UPDATE `quest_template`
SET `NextQuestId` = 32652
WHERE `Id` = 32654;

-- To the Skies!
-- A Bold Idea
-- The Fall of Shan Bu