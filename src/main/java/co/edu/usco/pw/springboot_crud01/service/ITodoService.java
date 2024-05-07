package co.edu.usco.pw.springboot_crud01.service;

import java.util.List;
import java.util.Optional;

import co.edu.usco.pw.springboot_crud01.model.Todo;

public interface ITodoService {

	List<Todo> getTodosByClassName(String className);

	Optional<Todo> getTodoById(long id);

	void updateTodo(Todo todo);

	void addTodo(String className, int classSchedule, String teacher, String classroom);

	void deleteTodoById(long id);
	
	void saveTodo(Todo todo);

}
