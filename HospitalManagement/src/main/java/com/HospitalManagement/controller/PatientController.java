
package com.HaspitalManagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.HaspitalManagement.dao.PatientDAO;
import com.HaspitalManagement.entity.Patient;

@Controller
@RequestMapping("/patient")
public class PatientController {

    private final PatientDAO patientdao;

    // Constructor injection
    public PatientController(PatientDAO patientdao) {
        this.patientdao = patientdao;
    }

    // Home page
    @GetMapping("/")
    public String home() {
        return "index";
    }

    // Show add patient form
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("patient", new Patient());
        return "patient-form";
    }

    // Save patient
    @PostMapping("/save")
    public String savePatient(
            @ModelAttribute("patient") Patient patient) {

        patientdao.save(patient);
        return "redirect:/patient/list";
    }

    // List all patients
    @GetMapping("/list")
    public String listPatients(Model model) {
        model.addAttribute(
                "patients", patientdao.getAllPatients());

        return "patient-list";
    }

    // Show edit form
    @GetMapping("/edit/{id}")
    public String showEditForm(
            @PathVariable("id") int id, Model model) {

        Patient patient = patientdao.getPatientById(id);

        if (patient == null) {
            return "redirect:/patient/list";
        }

        model.addAttribute("patient", patient);
        return "patient-form";
    }

    // Update patient
    @PostMapping("/update")
    public String updatePatient(
            @ModelAttribute("patient") Patient patient) {

        patientdao.update(patient);
        return "redirect:/patient/list";
    }

    // Delete patient
    @GetMapping("/delete/{id}")
    public String deletePatient(
            @PathVariable("id") int id) {

        patientdao.delete(id);
        return "redirect:/patient/list";
    }
}
