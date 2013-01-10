
 ALTER TABLE `ax_classic`.`botgroups` ADD COLUMN `hp` INTEGER  NOT NULL DEFAULT 0 AFTER `slot`,
 ADD COLUMN `mana` INTEGER  NOT NULL DEFAULT 0 AFTER `hp`;

ALTER TABLE `ax_classic`.`botgroups_b` ADD COLUMN `hp` INTEGER  NOT NULL DEFAULT 0 AFTER `slot`,
 ADD COLUMN `mana` INTEGER  NOT NULL DEFAULT 0 AFTER `hp`;

ALTER TABLE `ax_classic`.`botgroups_c` ADD COLUMN `hp` INTEGER  NOT NULL DEFAULT 0 AFTER `slot`,
 ADD COLUMN `mana` INTEGER  NOT NULL DEFAULT 0 AFTER `hp`;

ALTER TABLE `ax_classic`.`botbank` DROP PRIMARY KEY,
 ADD PRIMARY KEY  USING BTREE(`groupid`, `botid`);

UPDATE ax_classic.botbank SET groupid = 20;

ALTER TABLE `ax_classic`.`group_id` ADD COLUMN `groupid` INT(4)  NOT NULL FIRST,
 DROP PRIMARY KEY,
 ADD PRIMARY KEY  USING BTREE(`charid`, `groupid`);
 
 ALTER TABLE `ax_classic`.`botinventory` MODIFY COLUMN `color` INTEGER UNSIGNED NOT NULL;
 
 UPDATE `ax_classic`.`botinventory` SET color = 0;
 
ALTER TABLE `ax_classic`.`botinventory` MODIFY COLUMN `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
 MODIFY COLUMN `npctypeid` INT(10) UNSIGNED NOT NULL DEFAULT 0,
 MODIFY COLUMN `botslotid` INT(11)  DEFAULT 0,
 MODIFY COLUMN `itemid` INT(10) UNSIGNED DEFAULT 0,
 MODIFY COLUMN `color` INT(10) UNSIGNED NOT NULL DEFAULT 0;
 