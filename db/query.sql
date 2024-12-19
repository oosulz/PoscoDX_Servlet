CREATE TABLE IF NOT EXISTS `webdb`.`guestbook` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `contents` TEXT NOT NULL,
  `reg_date` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

desc guestbook;
select * from guestbook;
insert into guestbook values (2,"test","asdf","안녕하세요!",now());


CREATE TABLE IF NOT EXISTS `webdb`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `gender` ENUM("male", "female") NOT NULL,
  `join_date` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

desc user;
delete from user where id = 2;
select id, name, email, password, gender, join_date from user;
insert into user values (1,"testid","asdf@naver.com","1234","male",date_format(now(), '%Y-%m-%d'));

