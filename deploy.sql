CREATE TABLE `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `banto` bigint(20) NOT NULL,
  `banfrom` bigint(20) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `admin` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users` (`username`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT '8000',
  `exp` int(11) NOT NULL DEFAULT '0',
  `status` varchar(20) DEFAULT NULL,
  `statusto` int(11) DEFAULT NULL,
  `donated` int(11) NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `usernames` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `users_meta` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `key` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `users_achievement` (
  `userid` int(11) NOT NULL,
  `achievementid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`achievementid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `users_stat` (
  `userid` int(11) NOT NULL,
  `statid` int(11) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`statid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `metrics` (
  `id` varchar(40) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `last` int(11) NOT NULL DEFAULT '0',
  `total` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `servers` (
  `id` varchar(16) NOT NULL DEFAULT '',
  `host` varchar(50) NOT NULL,
  `port` int(11) NOT NULL DEFAULT '25565',
  `updated` int(10) unsigned DEFAULT NULL,
  `online` int(10) unsigned DEFAULT NULL,
  `max` int(10) unsigned DEFAULT NULL,
  `sign_status` varchar(20) DEFAULT NULL,
  `menu_status` varchar(255) DEFAULT NULL,
  `connectable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `stream_channels` (
  `username` varchar(20) NOT NULL,
  `channel` varchar(255) NOT NULL,
  PRIMARY KEY (`username`,`channel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `user_log_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `data` varchar(20) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `minidot_buys` (
  `userid` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `minidot_config` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `slot` varchar(15) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `minidot_dressed` (
  `userid` int(11) NOT NULL,
  `head` int(11) NOT NULL DEFAULT '-1',
  `body` int(11) NOT NULL DEFAULT '-1',
  `pet` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `sw_kits` (
  `userid` int(11) NOT NULL,
  `kit` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`,`kit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `sw_stats` (
  `userid` int(11) NOT NULL,
  `trail` varchar(20) DEFAULT NULL,
  `kit` varchar(20) DEFAULT NULL,
  `wins` int(11) NOT NULL DEFAULT '0',
  `games` int(11) NOT NULL DEFAULT '0',
  `kills` int(11) NOT NULL DEFAULT '0',
  `deaths` int(11) NOT NULL DEFAULT '0',
  `arrowsFired` int(11) NOT NULL DEFAULT '0',
  `blocksBroken` int(11) NOT NULL DEFAULT '0',
  `blocksPlaced` int(11) NOT NULL DEFAULT '0',
  `currentWinStreak` int(11) NOT NULL DEFAULT '0',
  `winStreak` int(11) NOT NULL DEFAULT '0',
  `u_arrow` tinyint(3) NOT NULL DEFAULT '0',
  `u_blazeArrow` tinyint(3) NOT NULL DEFAULT '0',
  `u_juggernaut` tinyint(3) NOT NULL DEFAULT '0',
  `u_speedBoost` tinyint(3) NOT NULL DEFAULT '0',
  `u_resistance` tinyint(3) NOT NULL DEFAULT '0',
  `u_redstoneHeart` tinyint(3) NOT NULL DEFAULT '50',
  `u_enderman` tinyint(3) NOT NULL DEFAULT '0',
  `u_builder` tinyint(3) NOT NULL DEFAULT '0',
  `u_zombie` tinyint(3) NOT NULL DEFAULT '0',
  `u_enchanter` tinyint(3) NOT NULL DEFAULT '0',
  `u_goldenApple` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `bw_stats` (
  `userid` int(11) NOT NULL,
  `trail` varchar(20) DEFAULT NULL,
  `kills` int(11) NOT NULL DEFAULT '0',
  `deaths` int(11) NOT NULL DEFAULT '0',
  `wins` int(11) NOT NULL DEFAULT '0',
  `games` int(11) NOT NULL DEFAULT '0',
  `bedBreaked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;


CREATE TABLE `cp_stats` (
  `userid` int(11) NOT NULL,
  `trail` varchar(20) DEFAULT NULL,
  `kills` int(11) NOT NULL DEFAULT '0',
  `deaths` int(11) NOT NULL DEFAULT '0',
  `wins` int(11) NOT NULL DEFAULT '0',
  `games` int(11) NOT NULL DEFAULT '0',
  `resourcePointsBreaked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
