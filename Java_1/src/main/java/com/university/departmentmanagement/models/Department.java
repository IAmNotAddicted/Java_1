package com.university.departmentmanagement.models;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class Department
{
    private Long id;
    private String name;
    private String title;
    private String phone;
    private String classroom;
    private List<Subject> subjects;
    private List<DepartmentNews> news;
}

