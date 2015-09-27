CREATE INDEX friendship_created_at ON relations(one, another, created_at);
CREATE INDEX idx_ano ON relations(`another`);
#CREATE INDEX user_id_owner_id_created_updated ON footprints(user_id,owner_id,created,updated);
alter table users add salt varchar(6);
update users set salt = (select salt from salts where salts.user_id = users.id);

alter table footprints add created_date date;
update footprints set created_date = DATE(footprints.created_at);
CREATE INDEX footprints ON footprints(user_id, owner_id, created_date);

CREATE INDEX user_id_private_created_at ON entries(user_id, private, created_at);
