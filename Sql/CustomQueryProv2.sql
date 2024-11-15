SELECT 
    hr_employee.name AS "Employee Name", 
    hr_employee.mobile_phone AS "Phone Number", 
    hr_employee.work_email AS "Work Email", 
    hr_department.name AS "Department",
    hr_job.name AS "Job Position"
FROM 
    hr_employee
LEFT JOIN 
    hr_department ON hr_employee.department_id = hr_department.id
LEFT JOIN 
    hr_job ON hr_employee.job_id = hr_job.id
LEFT JOIN 
    res_users ON hr_employee.user_id = res_users.id
WHERE 
    hr_employee.user_id IS NULL;
