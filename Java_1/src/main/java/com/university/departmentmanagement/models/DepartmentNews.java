package com.university.departmentmanagement.models;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;

@Data
@AllArgsConstructor
public class DepartmentNews
{
    private Long id;
    private Long departmentId;
    private String title;
    private String text;
    private LocalDate publicationDate;
}
