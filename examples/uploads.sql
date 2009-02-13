## MySQL

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
  `type`        varchar(10)     NOT NULL,
  `author`      varchar(32)     NOT NULL,
  `dist`        varchar(100)    NOT NULL,
  `version`     varchar(100)    NOT NULL,
  `filename`    varchar(255)    NOT NULL,
  `released`    int(16)		NOT NULL,
  PRIMARY KEY  (`author`,`dist`,`version`)
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
