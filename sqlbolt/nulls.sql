-- Exercise 8 — Tasks
-- Find the name and role of all employees who have not been assigned to a building ✓
-- Find the names of the buildings that hold no employees ✓
select role, name,building from employees where building is null;
select distinct building_name,capacity from buildings left join employees 
on building_name = building  where building is null; 