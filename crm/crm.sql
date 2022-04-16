-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS salespersons;

-- CREATE TABLES
CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  company_id INTEGER
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company TEXT
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  contact_type TEXT,
  date_time TEXT,
  notes TEXT,
  contact_id INTEGER,
  salespersons_id INTEGER
);

CREATE TABLE salespersons (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);
