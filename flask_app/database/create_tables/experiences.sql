CREATE TABLE IF NOT EXISTS `experiences` (
`experience_id`  int(11)       NOT NULL AUTO_INCREMENT 	COMMENT 'The experiences id',
`position_id`    int(11)  	   NOT NULL                	COMMENT 'Foreign Key from positions.', 
`name`           varchar(100)  NOT NULL                	COMMENT 'The name of the experience.',
`description`    varchar(100)  DEFAULT NULL            	COMMENT 'The discription of the experience.',
`hyperlink`      varchar(100)  DEFAULT NULL            	COMMENT 'a link where people can learn more about the experience.',
`start_date`     date  		   DEFAULT NULL            	COMMENT 'The start date of the experience.',
`end_date`       date  		   DEFAULT NULL            	COMMENT 'The end date of the experience.',
PRIMARY KEY  (`experience_id`),
FOREIGN KEY (position_id) REFERENCES positions(position_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT="The experiences that I have.";