delete from user_role;

delete from usr;

insert into usr(id,active,password,username) values
(1,true,'{whHk2Z0Fbn/jPjAu7u4C9faLhHwO3OhdYVu4EJF4/Xc=}9a47121c88e841819078d74a51ee1b85','user'),
(2,true,'{whHk2Z0Fbn/jPjAu7u4C9faLhHwO3OhdYVu4EJF4/Xc=}9a47121c88e841819078d74a51ee1b85','ivan');

insert into user_role(user_id,roles) values
(1,'USER'),(1,'ADMIN'),
(2,'USER');
