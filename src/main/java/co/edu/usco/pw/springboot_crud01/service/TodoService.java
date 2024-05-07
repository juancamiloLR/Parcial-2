package co.edu.usco.pw.springboot_crud01.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.edu.usco.pw.springboot_crud01.model.Todo;
import co.edu.usco.pw.springboot_crud01.repository.TodoRepository;

@Service
public class TodoService {

    @Autowired
    private TodoRepository todoRepository;

    public List<Todo> getTodosByUser(String className) {
        return todoRepository.findByClassName(className);
    }

    public Optional<Todo> getTodoById(long id) {
        return todoRepository.findById(id);
    }

    public void updateTodo(Todo todo) {
        todoRepository.save(todo);
    }

    public void addTodo(String className, int classSchedule, String teacher, String classroom) {
        todoRepository.save(new Todo(className, classSchedule, teacher, classroom));
    }

    public void deleteTodo(long id) {
        todoRepository.deleteById(id);
    }

    public void saveTodo(Todo todo) {
        todoRepository.save(todo);
    }
}

