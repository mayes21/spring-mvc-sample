package net.amabb.springmvc.dao;

import net.amabb.springmvc.model.Employee;

import java.util.List;

/**
 * Created by amabb on 02/02/16.
 */
public interface EmployeeDao {

    Employee findById(int id);

    void saveEmployee(Employee employee);

    void deleteEmployeeBySsn(String ssn);

    List<Employee> findAllEmployees();

    Employee findEmployeeBySsn(String ssn);

}
