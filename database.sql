
-- Database: db_netrep_tls
create database db_netrep_tls;

use db_netrep_tls;

-- Users table (for future authentication)
CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) UNIQUE,
    password_hash VARCHAR(255),
    role ENUM('user', 'admin') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Providers table (to maintain list of providers)
CREATE TABLE providers (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Data packages table
CREATE TABLE data_packages (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    provider_id BIGINT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (provider_id) REFERENCES providers(id)
);

-- Network reports table (main reports)
CREATE TABLE network_reports (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT NULL, -- NULL for anonymous reports
    provider_id BIGINT,
    data_package_id BIGINT,
    download_speed DECIMAL(10,2),
    upload_speed DECIMAL(10,2), 
    latency INT,                
    device_info JSON,             -- Store device details
    location_lat DECIMAL(8,6),
    location_lng DECIMAL(9,6),
    municipality VARCHAR(100),     -- For region-based analysis
    comment TEXT,
    sentiment_score DECIMAL(5,2) NULL, -- For AI analysis results
    network_quality_score DECIMAL(5,2) NULL, -- AI-generated score
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (provider_id) REFERENCES providers(id),
    FOREIGN KEY (data_package_id) REFERENCES data_packages(id)
);



-- AI Analysis Results
CREATE TABLE analysis_results (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    report_id BIGINT NOT NULL,
    sentiment_score DECIMAL(5,2),
    sentiment_aspects JSON, -- Store detailed sentiment analysis
    quality_score DECIMAL(5,2),
    analysis_details JSON,  -- Store detailed quality analysis
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (report_id) REFERENCES network_reports(id)
);



-- ADD USER
-- SQL Schema for power_users table
CREATE TABLE power_users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL, -- Will store hashed passwords
  role ENUM('admin', 'analyst', 'viewer') NOT NULL DEFAULT 'viewer',
  institution VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  last_login TIMESTAMP NULL,
  
  INDEX idx_username (username),
  INDEX idx_role (role)
);

-- Sample insert for initial adminn user
-- Password needs to be hashed before inserting in a real implementation
-- This is just an example (password would be "123456A@")

INSERT
	INTO
	power_users (name,
	username,
	password,
	role,
	institution)
VALUES ('Admin User',
'adminn',
'$2b$10$B94Vu8oTzUoHsIYIHFQL4.027lKpBztClW4H8skYTlcsx0m3AyeS6',
'admin',
'LafeAINet');



-- Create indexes for better query performance
CREATE INDEX idx_network_reports_location ON network_reports(location_lat, location_lng);
CREATE INDEX idx_network_reports_created_at ON network_reports(created_at);
CREATE INDEX idx_network_reports_provider ON network_reports(provider_id);
CREATE INDEX idx_network_reports_municipality ON network_reports(municipality);
CREATE INDEX idx_network_reports_id ON network_reports(id);
CREATE INDEX idx_analysis_results_id ON analysis_results(id);
CREATE INDEX idx_data_packages_id ON data_packages(id);
