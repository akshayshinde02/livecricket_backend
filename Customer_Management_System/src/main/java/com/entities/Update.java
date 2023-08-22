package com.entities;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.provider.FactoryProvider;

public class Update {

    public void updateEmployee(int id, AddCustomer updatedCustomer) {
        Session session = FactoryProvider.getFactory().openSession();
        Transaction transaction = session.beginTransaction();

        // Fetch the employee to be updated by ID
        AddCustomer employee = session.get(AddCustomer.class, id);

        if (employee != null) {
            // Update only the properties that have non-null values in the updatedCustomer object
            if (updatedCustomer.getFirst_name() != null) {
                employee.setFirst_name(updatedCustomer.getFirst_name());
            }
            if (updatedCustomer.getLast_name() != null) {
                employee.setLast_name(updatedCustomer.getLast_name());
            }
            if (updatedCustomer.getStreet() != null) {
                employee.setStreet(updatedCustomer.getStreet());
            }
            if (updatedCustomer.getAddress() != null) {
                employee.setAddress(updatedCustomer.getAddress());
            }
            if (updatedCustomer.getCity() != null) {
                employee.setCity(updatedCustomer.getCity());
            }
            if (updatedCustomer.getState() != null) {
                employee.setState(updatedCustomer.getState());
            }
            if (updatedCustomer.getEmail() != null) {
                employee.setEmail(updatedCustomer.getEmail());
            }
            if (updatedCustomer.getPhone() != null) {
                employee.setPhone(updatedCustomer.getPhone());
            }

            // Save or update the entity back to the database
            session.saveOrUpdate(employee);

            transaction.commit();
        }

        session.close(); // Close the session after transaction
    }
}
