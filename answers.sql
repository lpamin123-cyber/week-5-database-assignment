-- Question 1: Drop an index named IdxPhone from the customers table
DROP INDEX IdxPhone ON customers;

-- Question 2: Create user 'bob' restricted to localhost with password 'S$cu3r3!'
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Question 3: Grant INSERT privilege to 'bob'@'localhost' on all tables in salesDB

cat << 'EOF' > verify.sql
-- Verify IdxPhone is no longer present on customers
SHOW INDEX FROM customers WHERE Key_name = 'IdxPhone';

-- Ensure privilege and account changes are applied and inspect grants
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'bob'@'localhost';
