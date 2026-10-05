INSERT INTO authors (name, country) VALUES
('George Orwell', 'United Kingdom'),
('J.K. Rowling', 'United Kingdom'),
('Stephen King', 'United States'),
('Agatha Christie', 'United Kingdom'),
('Haruki Murakami', 'Japan'),
('Gabriel Garcia Marquez', 'Colombia'),
('Leo Tolstoy', 'Russia'),
('Jane Austen', 'United Kingdom'),
('Ernest Hemingway', 'United States'),
('Mark Twain', 'United States'),
('Victor Hugo', 'France'),
('Fyodor Dostoevsky', 'Russia'),
('Dan Brown', 'United States'),
('Paulo Coelho', 'Brazil'),
('Khaled Hosseini', 'Afghanistan'),
('Naguib Mahfouz', 'Egypt'),
('Yuval Noah Harari', 'Israel'),
('Robert C. Martin', 'United States'),
('James Clear', 'United States'),
('Martin Fowler', 'United Kingdom');

INSERT INTO books (title, price, author_id) VALUES
('1984', 15.99, 1),
('Animal Farm', 12.50, 1),

('Harry Potter and the Philosopher''s Stone', 20.00, 2),
('Harry Potter and the Chamber of Secrets', 22.00, 2),
('Harry Potter and the Prisoner of Azkaban', 24.50, 2),

('The Shining', 18.75, 3),
('It', 25.00, 3),
('The Green Mile', 19.99, 3),

('Murder on the Orient Express', 16.50, 4),
('And Then There Were None', 17.75, 4),
('The ABC Murders', 15.00, 4),

('Norwegian Wood', 21.00, 5),
('Kafka on the Shore', 23.50, 5),

('One Hundred Years of Solitude', 22.00, 6),
('Love in the Time of Cholera', 20.50, 6),

('War and Peace', 30.00, 7),
('Anna Karenina', 28.50, 7),

('Pride and Prejudice', 14.99, 8),
('Sense and Sensibility', 13.50, 8),

('The Old Man and the Sea', 12.99, 9),
('A Farewell to Arms', 18.00, 9),

('The Adventures of Tom Sawyer', 14.50, 10),
('Adventures of Huckleberry Finn', 16.00, 10),

('Les Miserables', 32.00, 11),
('The Hunchback of Notre-Dame', 27.50, 11),

('Crime and Punishment', 24.00, 12),
('The Brothers Karamazov', 29.00, 12),

('The Da Vinci Code', 21.99, 13),
('Angels & Demons', 19.99, 13),

('The Alchemist', 17.50, 14),
('Brida', 15.75, 14),

('The Kite Runner', 18.50, 15),
('A Thousand Splendid Suns', 19.50, 15),

('The Thief and the Dogs', 16.00, 16),
('Palace Walk', 20.00, 16),

('Sapiens', 26.00, 17),
('Homo Deus', 27.00, 17),

('Clean Code', 35.00, 18),
('The Clean Coder', 30.00, 18),

('Atomic Habits', 24.00, 19),
('The Power of Habit', 22.50, 19),

('Refactoring', 38.00, 20),
('Patterns of Enterprise Application Architecture', 42.00, 20);


INSERT INTO customers (name) VALUES
('Ahmed Hassan'),
('Mohamed Ali'),
('Omar Khaled'),
('Youssef Mahmoud'),
('Karim Adel'),
('Mostafa Ibrahim'),
('Amr Samir'),
('Hassan Mohamed'),
('Mahmoud Tarek'),
('Ali Mostafa'),
('Omar Ahmed'),
('Yassin Khaled'),
('Adam Mohamed'),
('Ziad Hassan'),
('Mariam Ahmed'),
('Nour Ali'),
('Salma Mohamed'),
('Aya Khaled'),
('Menna Adel'),
('Farah Mostafa');

INSERT INTO orders (ordered_at, customer_id) VALUES
('2026-01-05 10:30:00', 1),
('2026-01-08 14:20:00', 2),
('2026-01-12 16:45:00', 3),
('2026-01-15 11:10:00', 4),
('2026-01-20 19:30:00', 5),
('2026-02-02 09:15:00', 6),
('2026-02-05 13:40:00', 7),
('2026-02-10 17:20:00', 8),
('2026-02-14 12:00:00', 9),
('2026-02-18 20:10:00', 10),
('2026-03-01 10:00:00', 11),
('2026-03-04 15:30:00', 12),
('2026-03-08 18:45:00', 13),
('2026-03-12 11:30:00', 14),
('2026-03-18 16:00:00', 15),
('2026-03-22 09:45:00', 16),
('2026-04-01 14:15:00', 17),
('2026-04-05 17:50:00', 18),
('2026-04-10 12:30:00', 19),
('2026-04-15 19:00:00', 20),
('2026-04-20 10:45:00', 1),
('2026-04-25 13:20:00', 2),
('2026-05-01 16:10:00', 3),
('2026-05-05 18:30:00', 4),
('2026-05-10 11:00:00', 5),
('2026-05-15 15:45:00', 6),
('2026-05-20 20:00:00', 7),
('2026-06-01 09:30:00', 8),
('2026-06-05 14:00:00', 9),
('2026-06-10 17:15:00', 10);

INSERT INTO order_item (quantity, cost, order_id, book_id) VALUES
(2, 15.99, 1, 1),
(1, 12.50, 1, 2),

(1, 20.00, 2, 3),
(2, 22.00, 2, 4),

(3, 18.75, 3, 5),
(1, 25.00, 3, 6),

(2, 16.50, 4, 7),

(1, 15.99, 5, 1),
(2, 20.00, 5, 3),

(1, 22.00, 6, 4);