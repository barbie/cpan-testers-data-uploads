## MySQL

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
  `type`        varchar(10)     NOT NULL,
  `author`      varchar(32)     NOT NULL,
  `dist`        varchar(255)    NOT NULL,
  `version`     varchar(255)    NOT NULL,
  `filename`    varchar(255)    NOT NULL,
  `released`    int(16)		NOT NULL,
  PRIMARY KEY  (`author`,`dist`,`version`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `ixlatest`;
CREATE TABLE `ixlatest` (
  `dist`        varchar(255)    NOT NULL,
  `version`     varchar(255)    NOT NULL,
  `released`    int(16)		NOT NULL,
  `author`      varchar(32)     NOT NULL,
  `oncpan`      tinyint(4)      DEFAULT 0,
  PRIMARY KEY  (`dist`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `summary`;
CREATE TABLE `summary` (
  `type`	varchar(8)	 NOT NULL,
  `name`	varchar(255)     NOT NULL,
  `lastid`	int(10) unsigned NOT NULL,
  `dataset`	blob,
  PRIMARY KEY  (`type`,`name`)
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `page_requests`;
CREATE TABLE `page_requests` (
  `type`	varchar(8)	 NOT NULL,
  `name`	varchar(255)     NOT NULL,
  `weight`	int(2) unsigned  NOT NULL
) ENGINE=MyISAM;

## SQLite

CREATE TABLE `uploads` (
  `type`        text    NOT NULL,
  `author`      text    NOT NULL,
  `dist`        text    NOT NULL,
  `version`     text    NOT NULL,
  `filename`    text    NOT NULL,
  `released`    int     NOT NULL,
  PRIMARY KEY  (`author`,`dist`,`version`)
);
