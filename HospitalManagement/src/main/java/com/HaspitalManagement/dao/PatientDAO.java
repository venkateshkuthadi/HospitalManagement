
package com.HaspitalManagement.dao;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.HaspitalManagement.entity.Patient;

@Repository
public class PatientDAO {

    private final JdbcTemplate jdbcTemplate;

    // Constructor injection
    public PatientDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Save patient
    public void save(Patient patient) {

        String sql = "INSERT INTO patient "
                + "(patient_id, name, date_of_birth, age, gender, "
                + "mobileno, email, address, emergency_contact) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        jdbcTemplate.update(sql,
                patient.getPatientId(),
                patient.getName(),
                patient.getDateOfBirth(),
                patient.getAge(),
                patient.getGender(),
                patient.getMobileno(),
                patient.getEmail(),
                patient.getAddress(),
                patient.getEmergencyContact());
    }

    // Get all patients
    public List<Patient> getAllPatients() {

        String sql = "SELECT * FROM patient";

        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            Patient patient = new Patient();

            patient.setPatientId(rs.getLong("patient_id"));
            patient.setName(rs.getString("name"));
            patient.setDateOfBirth(rs.getString("date_of_birth"));
            patient.setAge(rs.getInt("age"));
            patient.setGender(rs.getString("gender"));
            patient.setMobileno(rs.getString("mobileno"));
            patient.setEmail(rs.getString("email"));
            patient.setAddress(rs.getString("address"));
            patient.setEmergencyContact(
                    rs.getString("emergency_contact"));

            return patient;
        });
    }

    // Get patient by ID
    public Patient getPatientById(int id) {

        String sql = "SELECT * FROM patient WHERE patient_id = ?";

        List<Patient> patients = jdbcTemplate.query(sql, (rs, rowNum) -> {
            Patient patient = new Patient();

            patient.setPatientId(rs.getLong("patient_id"));
            patient.setName(rs.getString("name"));
            patient.setDateOfBirth(rs.getString("date_of_birth"));
            patient.setAge(rs.getInt("age"));
            patient.setGender(rs.getString("gender"));
            patient.setMobileno(rs.getString("mobileno"));
            patient.setEmail(rs.getString("email"));
            patient.setAddress(rs.getString("address"));
            patient.setEmergencyContact(
                    rs.getString("emergency_contact"));

            return patient;
        }, id);

        return patients.isEmpty() ? null : patients.get(0);
    }

    // Update patient
    public void update(Patient patient) {

        String sql = "UPDATE patient SET name = ?, "
                + "date_of_birth = ?, age = ?, gender = ?, "
                + "mobileno = ?, email = ?, address = ?, "
                + "emergency_contact = ? WHERE patient_id = ?";

        jdbcTemplate.update(sql,
                patient.getName(),
                patient.getDateOfBirth(),
                patient.getAge(),
                patient.getGender(),
                patient.getMobileno(),
                patient.getEmail(),
                patient.getAddress(),
                patient.getEmergencyContact(),
                patient.getPatientId());
    }

    private Patient mapRowToPatient(
            java.sql.ResultSet rs)
            throws java.sql.SQLException {

        Patient patient = new Patient();

        patient.setPatientId(rs.getLong("patient_id"));
        patient.setName(rs.getString("name"));
        patient.setDateOfBirth(rs.getString("date_of_birth"));
        patient.setAge(rs.getInt("age"));
        patient.setGender(rs.getString("gender"));
        patient.setMobileno(rs.getString("mobileno"));
        patient.setEmail(rs.getString("email"));
        patient.setAddress(rs.getString("address"));
        patient.setEmergencyContact(
                rs.getString("emergency_contact"));

        return patient;
    }
    // Delete patient
    public void delete(int id) {

        String sql = "DELETE FROM patient WHERE patient_id = ?";

        jdbcTemplate.update(sql, id);
    }
}
