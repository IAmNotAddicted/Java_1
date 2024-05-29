package com.university.departmentmanagement.controllers;
import com.university.departmentmanagement.models.Subject;
import com.university.departmentmanagement.services.SubjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class SubjectController
{
    private final SubjectService subjectService;

    @GetMapping("/subjects")
    public String listSubjects(Model model)
    {
        model.addAttribute("subjects", subjectService.listSubjects());
        return "subjects";
    }

    @PostMapping("/subjects")
    public String createSubject(Subject subject)
    {
        subjectService.addSubject(subject);
        return "redirect:/subjects";
    }

    @GetMapping("/transfer")
    public String transferMoneyPage() {
        return "transfer_money";
    }
}

