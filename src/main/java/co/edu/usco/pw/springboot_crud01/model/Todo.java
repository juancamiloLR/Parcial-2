package co.edu.usco.pw.springboot_crud01.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "todos")
public class Todo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@NotBlank
	@Size(max = 20)
	private String className;

	@NotNull
	private int classSchedule;

	@NotBlank
	@Size(max = 100)
	private String teacher;

	@NotBlank
	private String classroom;

	public Todo() {
		super();
	}

	public Todo(String className, int classSchedule, String teacher, String classroom) {
		super();
		this.className = className;
		this.classSchedule = classSchedule;
		this.teacher = teacher;
		this.classroom = classroom;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public int getClassSchedule() {
		return classSchedule;
	}

	public void setClassSchedule(int classSchedule) {
		this.classSchedule = classSchedule;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public String getClassroom() {
		return classroom;
	}

	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}
}
