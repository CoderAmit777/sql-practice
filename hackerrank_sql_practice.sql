SELECT Company.company_code,founder,1,COUNT(DISTINCT Senior_Manager.senior_manager_code),COUNT(DISTINCT Manager.manager_code),COUNT(DISTINCT Employee.employee_code)
FROM Company
INNER JOIN Lead_Manager ON Lead_Manager.company_code = Company.company_code
INNER JOIN Senior_Manager ON Senior_Manager.lead_manager_code = Lead_Manager.lead_manager_code AND Lead_Manager.company_code = Senior_Manager.company_code
INNER JOIN Manager ON Manager.senior_manager_code = Senior_Manager.senior_manager_code
INNER JOIN Employee ON Manager.manager_code = Employee.manager_code
GROUP BY Company.company_code,founder
ORDER BY Company.company_code;
