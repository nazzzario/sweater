delete from message;
ALTER TABLE message AUTO_INCREMENT=1;
insert into message(id,tag,text,user_id) values
(null,'my-tag','1',1),
(null,'2','2',1),
(null,'3','3',1),
(null,'my-tag','4',1);

alter table message AUTO_INCREMENT 10;