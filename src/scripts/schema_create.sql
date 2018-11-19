CREATE TABLE IF NOT EXISTS all_vehicles (
  all_vehicle_id SERIAL PRIMARY KEY,
  company VARCHAR(20),
  name VARCHAR(20),
  make VARCHAR(10),
  engine_capacity VARCHAR(10),
  vehicle_type VARCHAR(10),
  service_price DECIMAL
);

CREATE TABLE IF NOT EXISTS booking (
  booking_id SERIAL PRIMARY KEY,
  booking_ref VARCHAR(14),
  customer_name VARCHAR(50),
  phone VARCHAR(11),
  address VARCHAR(200),
  cupon VARCHAR(10),
  vehicle VARCHAR(30),
  date VARCHAR(12),
  time VARCHAR(10),
  vehicle_type VARCHAR(10),
  booking_status VARCHAR(10),
  bookingts TIMESTAMP,
  service_price VARCHAR(5),
  sms_notification BOOLEAN,
  sms_reference VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS cupons (
  cupon_id SERIAL PRIMARY KEY,
  code VARCHAR(10) NOT NULL,
  valid_through DATE,
  description VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS admin (
  admin_id SERIAL PRIMARY KEY,
  admin_name VARCHAR(20),
  email VARCHAR(30),
  phone VARCHAR(10),
  password VARCHAR(15),
  last_login TIMESTAMP
);