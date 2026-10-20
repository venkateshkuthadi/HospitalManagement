package com.HaspitalManagement.entity;

public class Patient {

	    private Long patientId;
	    private String name;
	    private String dateOfBirth;
	    private Integer age;
	    private String gender;
	    private String mobileno;
	    private String email;
	    private String address;
	    private String emergencyContact;

	    // Default constructor
	    public Patient() {
	    }

	    // Parameterized constructor
	    public Patient(Long patientId, String name, String dateOfBirth,
	                   Integer age, String gender, String mobileno,
	                   String email, String address, String emergencyContact) {

	        this.patientId = patientId;
	        this.name = name;
	        this.dateOfBirth = dateOfBirth;
	        this.age = age;
	        this.gender = gender;
	        this.mobileno = mobileno;
	        this.email = email;
	        this.address = address;
	        this.emergencyContact = emergencyContact;
	    }

	    // Getters and Setters

	    public Long getPatientId() {
	        return patientId;
	    }

	    public void setPatientId(Long patientId) {
	        this.patientId = patientId;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getDateOfBirth() {
	        return dateOfBirth;
	    }

	    public void setDateOfBirth(String dateOfBirth) {
	        this.dateOfBirth = dateOfBirth;
	    }

	    public Integer getAge() {
	        return age;
	    }

	    public void setAge(Integer age) {
	        this.age = age;
	    }

	    public String getGender() {
	        return gender;
	    }

	    public void setGender(String gender) {
	        this.gender = gender;
	    }

	    public String getMobileno() {
	        return mobileno;
	    }

	    public void setMobileno(String mobileno) {
	        this.mobileno = mobileno;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public String getAddress() {
	        return address;
	    }

	    public void setAddress(String address) {
	        this.address = address;
	    }

	    public String getEmergencyContact() {
	        return emergencyContact;
	    }

	    public void setEmergencyContact(String emergencyContact) {
	        this.emergencyContact = emergencyContact;
	    }

	    @Override
	    public String toString() {
	        return "Patient{" +
	                "patientId=" + patientId +
	                ", name='" + name + '\'' +
	                ", dateOfBirth=" + dateOfBirth +
	                ", age=" + age +
	                ", gender='" + gender + '\'' +
	                ", mobileno='" + mobileno + '\'' +
	                ", email='" + email + '\'' +
	                ", address='" + address + '\'' +
	                ", emergencyContact='" + emergencyContact + '\'' +
	                '}';
	    }

		
	}

