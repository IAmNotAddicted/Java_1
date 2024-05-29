package com.university.departmentmanagement.controllers;
import com.university.departmentmanagement.models.Department;
import com.university.departmentmanagement.services.DepartmentService;
import com.university.departmentmanagement.services.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.Collections;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class DepartmentController
{
    private final DepartmentService departmentService;
    private final SubjectService subjectService;

    @GetMapping("/departments")
    public String departments(Model model)
    {
        model.addAttribute("departments", departmentService.listDepartments());
        return "departments";
    }

    @GetMapping("/departments/{id}")
    public String departmentInfo(@PathVariable Long id, Model model)
    {
        Department department = departmentService.getDepartmentById(id);
        if (department != null)
        {
            model.addAttribute("department", department);
            model.addAttribute("allSubjects", subjectService.listSubjects());
            return "department-info";
        }
        return "redirect:/departments";
    }

    @PostMapping("/departments/create")
    public String createDepartment(Department department)
    {
        departmentService.addDepartment(department);
        return "redirect:/departments";
    }

    @PostMapping("/departments/delete/{id}")
    public String deleteDepartment(@PathVariable Long id)
    {
        departmentService.deleteDepartment(id);
        return "redirect:/departments";
    }

    @GetMapping("/givemoney")
    public String giveMoneyPage() {
        return "givemoney";
    }
    @GetMapping("/nomoney")
    public String nomoney() {
        return "nomoney";
    }
    @GetMapping("/incomingmoney")
    public String incomingmoney() {
        return "incomingmoney";
    }

    @PostMapping("/departments/{id}")
    public String addSubjectsToDepartment(@PathVariable Long id, @RequestParam List<Long> subjectIds)
    {
        departmentService.addSubjectsToDepartment(id, subjectIds);
        return "redirect:/departments/" + id;
    }
}
