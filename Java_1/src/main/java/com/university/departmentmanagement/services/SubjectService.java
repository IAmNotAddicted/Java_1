package com.university.departmentmanagement.services;
import com.university.departmentmanagement.models.Subject;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

@Service
public class SubjectService
{

    private final List<Subject> subjects = new ArrayList<>();
    private final AtomicLong counter = new AtomicLong();

    // Додавання предмету
    public void addSubject(Subject subject)
    {
        subject.setId(counter.incrementAndGet());
        subjects.add(subject);
    }

    // Видалення предмету
    public void deleteSubject(Long id)
    {
        subjects.removeIf(subject -> subject.getId().equals(id));
    }

    // Отримання списку предметів
    public List<Subject> listSubjects()
    {
        return subjects;
    }
}

