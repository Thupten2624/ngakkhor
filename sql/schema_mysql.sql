-- MySQL 8+
CREATE DATABASE IF NOT EXISTS ngakkhor_taxonomy CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ngakkhor_taxonomy;

CREATE TABLE source_pages (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  url VARCHAR(1024) NOT NULL UNIQUE,
  title VARCHAR(255) NOT NULL,
  language_code VARCHAR(10) NULL,
  fetched_at DATETIME NOT NULL,
  raw_html LONGTEXT NULL,
  raw_text LONGTEXT NULL
) ENGINE=InnoDB;

CREATE TABLE node_types (
  code VARCHAR(32) PRIMARY KEY,
  label VARCHAR(80) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE units (
  code VARCHAR(32) PRIMARY KEY,
  label VARCHAR(80) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE taxonomy_nodes (
  id VARCHAR(64) PRIMARY KEY,
  parent_id VARCHAR(64) NULL,
  source_page_id BIGINT NULL,
  name VARCHAR(255) NOT NULL,
  node_type VARCHAR(32) NOT NULL,
  description TEXT NULL,
  display_order INT NOT NULL,
  created_at DATETIME NOT NULL,
  FOREIGN KEY (parent_id) REFERENCES taxonomy_nodes(id) ON DELETE SET NULL,
  FOREIGN KEY (node_type) REFERENCES node_types(code),
  FOREIGN KEY (source_page_id) REFERENCES source_pages(id)
) ENGINE=InnoDB;

CREATE TABLE practice_profiles (
  node_id VARCHAR(64) PRIMARY KEY,
  unit_code VARCHAR(32) NULL,
  goal_value INT NULL,
  daily_target INT NULL,
  current_value INT NULL,
  mantra TEXT NULL,
  FOREIGN KEY (node_id) REFERENCES taxonomy_nodes(id) ON DELETE CASCADE,
  FOREIGN KEY (unit_code) REFERENCES units(code)
) ENGINE=InnoDB;

CREATE TABLE practice_days (
  node_id VARCHAR(64) NOT NULL,
  weekday TINYINT NOT NULL,
  PRIMARY KEY (node_id, weekday),
  FOREIGN KEY (node_id) REFERENCES practice_profiles(node_id) ON DELETE CASCADE,
  CHECK (weekday BETWEEN 0 AND 6)
) ENGINE=InnoDB;

CREATE TABLE practice_times (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  node_id VARCHAR(64) NOT NULL,
  time_of_day TIME NOT NULL,
  UNIQUE KEY uq_node_time (node_id, time_of_day),
  FOREIGN KEY (node_id) REFERENCES practice_profiles(node_id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE practice_reminders (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  node_id VARCHAR(64) NOT NULL,
  minutes_before INT NOT NULL,
  UNIQUE KEY uq_node_reminder (node_id, minutes_before),
  FOREIGN KEY (node_id) REFERENCES practice_profiles(node_id) ON DELETE CASCADE
) ENGINE=InnoDB;
