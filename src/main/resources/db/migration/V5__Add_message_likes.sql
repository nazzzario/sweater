create table message_likes(
message_id bigint not null references message,
user_id bigint not null references usr,
primary key (message_id,user_id)
)