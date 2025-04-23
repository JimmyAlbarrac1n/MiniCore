DELETE FROM Task;
DELETE FROM Project;
DELETE FROM Employee;
-- Crear tabla Employee
CREATE TABLE IF NOT EXISTS Employee (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    username TEXT UNIQUE NOT NULL
);

-- Crear tabla Project
CREATE TABLE IF NOT EXISTS Project (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

-- Crear tabla Task
CREATE TABLE IF NOT EXISTS Task (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description TEXT NOT NULL,
    start_date DATE NOT NULL,
    estimated_days INTEGER NOT NULL,
    status TEXT NOT NULL,
    employee_id INTEGER NOT NULL,
    project_id INTEGER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id),
    FOREIGN KEY (project_id) REFERENCES Project(id)
);

-- Insertar datos en la tabla Employee
INSERT INTO Employee (first_name, last_name, username) VALUES
('Perico', 'Palotes', 'perico'),
('Zoila', 'Ostia', 'zoila'),
('De', 'Vaca', 'devaca');

-- Insertar datos en la tabla Project
INSERT INTO Project (name) VALUES
('Udla Website'),
('Supermaxi App'),
('Cigarra Pedidos'),
('Whatever');

-- Insertar datos en la tabla Task
INSERT INTO Task (description, start_date, estimated_days, status, employee_id, project_id) VALUES
('Fun Spec App', '2024-01-10', 15, 'In progress', 1, 2),
('Homepage', '2024-01-10', 2, 'In progress', 2, 1),
('Cobranzas', '2023-12-27', 7, 'Done', 3, 3),
('Diseño Splash Screen', '2024-02-13', 1, 'In progress', 2, 2),
('Header', '2024-01-12', 1, 'In progress', 1, 1),
('Login Pedidos', '2023-12-19', 1, 'Done', 3, 4);
