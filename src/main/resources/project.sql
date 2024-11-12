use db_projects;

create table users (
  id bigint primary key auto_increment,
  username varchar(255) not null unique,
  email varchar(255) not null unique,
  password_hash varchar(255) not null,
  created_at timestamp default current_timestamp
);

create table projects (
  id bigint primary key auto_increment,
  name varchar(255) not null,
  description text,
  start_date date,
  end_date date,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp on update current_timestamp
);

create table documentation (
  id bigint primary key auto_increment,
  project_id bigint,
  title varchar(255) not null,
  content text,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp on update current_timestamp,
  foreign key (project_id) references projects (id) on delete cascade
);

create table roles (
  id bigint primary key auto_increment,
  name varchar(255) not null unique
);

create table user_roles (
  user_id bigint,
  role_id bigint,
  primary key (user_id, role_id),
  foreign key (user_id) references users (id) on delete cascade,
  foreign key (role_id) references roles (id) on delete cascade
);

create table project_assignments (
  user_id bigint,
  project_id bigint,
  role_id bigint,
  primary key (user_id, project_id),
  foreign key (user_id) references users (id) on delete cascade,
  foreign key (project_id) references projects (id) on delete cascade,
  foreign key (role_id) references roles (id)
);

create table budgets (
  id bigint primary key auto_increment,
  project_id bigint,
  amount decimal not null,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp on update current_timestamp,
  foreign key (project_id) references projects (id) on delete cascade
);

create table access_tokens (
  id bigint primary key auto_increment,
  user_id bigint,
  token varchar(255) not null unique,
  expires_at timestamp not null,
  created_at timestamp default current_timestamp,
  foreign key (user_id) references users (id) on delete cascade
);