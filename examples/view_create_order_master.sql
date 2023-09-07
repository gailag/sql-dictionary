/*
Merging 3 diff tables with fk to a table called "order_master_view"
Renaming column names to make it more distinct
*/

CREATE OR REPLACE VIEW "order_master_view" AS
SELECT ord.*,
emp.company emp_company,
emp.last_name emp_last_name,
emp.first_name emp_first_name,
emp.email_address emp_email_address,
emp.job_title emp_job_title,
emp.business_phone emp_business_phone,
emp.home_phone emp_home_phone,
emp.mobile_phone emp_mobile_phone,
emp.fax_number emp_fax_number,
emp.address emp_address,
emp.city emp_city,
emp.state_province emp_state_province,
emp.zip_postal_code emp_zip_postal_code,
emp.country_region emp_country_region,
emp.web_page emp_web_page,
emp.notes emp_notes,
cust.company cust_company,
cust.last_name cust_last_name,
cust.first_name cust_first_name,
cust.email_address cust_email_address,
cust.job_title cust_job_title,
cust.business_phone cust_business_phone,
cust.home_phone cust_home_phone,
cust.mobile_phone cust_mobile_phone,
cust.fax_number cust_fax_number,
cust.address cust_address,
cust.city cust_city,
cust.state_province cust_state_province,
cust.zip_postal_code cust_zip_postal_code,
cust.country_region cust_country_region,
cust.web_page cust_web_page,
cust.notes cust_notes
FROM
company_orders_db.orders ord
JOIN company_orders_db.employee emp
ON ord.employee_id = emp.employee_id
JOIN company_orders_db.customer cust
ON ord.customer_id = cust.customer_id
