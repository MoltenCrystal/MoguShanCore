DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `id` INT(11) NOT NULL,
  `vp` INT(11) DEFAULT '0',
  `dp` INT(11) DEFAULT '0',
  `location` VARCHAR(255) DEFAULT NULL,
  `nickname` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `currency_transactions`;
CREATE TABLE `currency_transactions` (
  `realmid` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guid` INT(10) UNSIGNED NOT NULL,
  `unix_time` INT(10) UNSIGNED NOT NULL,
  `operation` ENUM('LOOT_MOB','LOOT_ITEM','MAIL','QUEST_REWARD','TRADE','SELL_ITEM','GUILD_BANK','AUCTION','TRANSMOGRIFICATION') NOT NULL,
  `param` INT(10) UNSIGNED DEFAULT NULL,
  `attachments` TEXT NOT NULL,
  `amount_before` INT(10) UNSIGNED DEFAULT NULL,
  `amount_after` INT(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_guid` (`guid`),
  KEY `idx_operation` (`operation`),
  KEY `idx_unix_time` (`unix_time`),
  KEY `idx_param` (`param`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
