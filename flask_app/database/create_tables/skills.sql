CREATE TABLE IF NOT EXISTS `skills` (
`skill_id`         int(11)       NOT NULL AUTO_INCREMENT 	COMMENT 'The skills id',
`experience_id`    int(11)  	 NOT NULL                	COMMENT 'Foreign Key from experiences.', 
`name`             varchar(100)  NOT NULL                	COMMENT 'The name of the skill.',
`skill_level`      int(10)  	 NOT NULL            		COMMENT 'The level of the skill; 1 being worst, 10 being best.',

PRIMARY KEY  (`skill_id`),
FOREIGN KEY (experience_id) REFERENCES experiences(experience_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT="The skills that I have.";