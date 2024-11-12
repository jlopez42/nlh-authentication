-- Insert example users
insert into
  users (username, email, password_hash)
values
  (
    'johndoe',
    'john@example.com',
    'hashed_password_1'
  ),
  (
    'janedoe',
    'jane@example.com',
    'hashed_password_2'
  );

-- Insert example roles
insert into
  roles (name)
values
  ('Admin'),
  ('Editor'),
  ('Viewer');

-- Insert example projects
insert into
  projects (name, description, start_date, end_date)
values
  (
    'Project Alpha',
    'A top secret project.',
    '2023-01-01',
    '2023-12-31'
  ),
  (
    'Project Beta',
    'A public project.',
    '2023-06-01',
    '2023-11-30'
  );

-- Insert example documentation
insert into
  documentation (project_id, title, content)
values
  (
    1,
    'Alpha Overview',
    'This is an overview of Project Alpha.'
  ),
  (
    2,
    'Beta Overview',
    'This is an overview of Project Beta.'
  );

-- Insert example budgets
insert into
  budgets (project_id, amount)
values
  (1, 100000.00),
  (2, 50000.00);

-- Insert example user roles
insert into
  user_roles (user_id, role_id)
values
  (1, 1), -- John Doe as Admin
  (2, 2);

-- Jane Doe as Editor
-- Insert example project assignments
insert into
  project_assignments (user_id, project_id, role_id)
values
  (1, 1, 1), -- John Doe as Admin on Project Alpha
  (2, 2, 2);

-- Jane Doe as Editor on Project Beta
-- Insert example access tokens
insert into
  access_tokens (user_id, token, expires_at)
values
  (1, 'token_123', '2023-12-31 23:59:59'),
  (2, 'token_456', '2023-11-30 23:59:59');