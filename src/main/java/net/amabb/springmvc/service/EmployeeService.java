package net.amabb.springmvc.service;

import net.amabb.springmvc.model.Employee;

import java.util.List;

/**
 * Created by amabb on 02/02/16.
 */
public interface EmployeeService {

    Employee findById(int id);

    void saveEmployee(Employee employee);

    void updateEmployee(Employee employee);

    void deleteEmployeeBySsn(String ssn);

    List<Employee> findAllEmployees();

    Employee findEmployeeBySsn(String ssn);

    boolean isEmployeeSsnUnique(Integer id, String ssn);

}
