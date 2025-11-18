#!/bin/bash

echo ">>> Creating fake user directories..."
sudo mkdir -p /home/jsmith/Documents
sudo mkdir -p /home/mmiller/Finance
sudo mkdir -p /home/irivera/HR
sudo mkdir -p /home/twilliams/IT
sudo mkdir -p /home/backupsvc/Backups

echo ">>> Creating fake Finance files..."
echo "Q4 FINANCIAL REPORT - CONFIDENTIAL" | sudo tee /home/mmiller/Finance/Quarterly_Financials_2024.xlsx
echo "Employee Salaries Inside" | sudo tee /home/mmiller/Finance/Payroll_2024.csv

echo ">>> Creating fake HR files..."
echo "HR Case File - Confidential" | sudo tee /home/irivera/HR/Termination_List.docx
echo "SSN, DOB, Employee IDs" | sudo tee /home/irivera/HR/Employee_Master_List.xlsx

echo ">>> Creating fake IT files..."
echo "VMware vCenter Admin Password: Admin@1234" | sudo tee /home/twilliams/IT/VMware_Config.txt
echo "Firewall Rule Backup" | sudo tee /home/twilliams/IT/Firewall_Backup.json

echo ">>> Creating fake Backup Service files..."
echo "Backup Encryption Key: 8af091bc3281dbf1" | sudo tee /home/backupsvc/Backups/Backup-Key.txt
echo "Nightly Backup Logs" | sudo tee /home/backupsvc/Backups/backup-logs-2024.log

echo ">>> Creating Executive documents..."
sudo mkdir -p /home/jsmith/Documents
echo "CEO Strategy Roadmap 2025" | sudo tee /home/jsmith/Documents/Executive_Roadmap.docx

echo ">>> Creating fake password files..."
echo "admin: Spring2024!" | sudo tee /home/jsmith/Documents/passwords.txt
echo "sql_user: P@ssw0rd1!" | sudo tee -a /home/jsmith/Documents/passwords.txt
echo "vpn_user: Welcome123" | sudo tee -a /home/jsmith/Documents/passwords.txt

echo ">>> Creating fake AWS + SSH secrets..."
echo "AWS AccessKeyId=FAKEKEY123" | sudo tee /home/jsmith/.aws-credentials
echo "Private SSH Key" | sudo tee /home/jsmith/.id_rsa

echo ">>> Creating fake corp directories..."
sudo mkdir -p /opt/corp/Config
sudo mkdir -p /opt/corp/Secrets
sudo mkdir -p /opt/corp/Systems
sudo mkdir -p /opt/corp/Network

echo ">>> Creating fake config & secret files..."
echo "{ 'db_password': 'SuperSecretPassword1\!' }" | sudo tee /opt/corp/Config/db_config.json
echo "API_KEY=SK_TEST_FAKE_12345" | sudo tee /opt/corp/Secrets/api_key.txt

echo ">>> Creating fake servers.list..."
echo "server01
server02
sql01
fs01
domain-controller" | sudo tee /opt/corp/Systems/servers.list

echo ">>> Creating fake network map..."
echo "10.0.0.10 DC01
10.0.0.11 SQL01
10.0.0.12 FILE01
10.0.0.13 APP01" | sudo tee /opt/corp/Network/network_map.txt

echo ">>> Fake enterprise environment successfully created!"
