-- Remove all access key errors for dungeons
UPDATE `access_requirement`
SET `item` = 0, `item2` = 0
WHERE `mapID` IN (540,542,543,545,546,547,552,553,554,555,556,557,558,560)