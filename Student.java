package lecture1.form02;

public class Student {

    String id;
    String studentNumber;
    String name;
    String departmentId;
    String year;

    public Student(String id, String studentNumber, String name, String departmentId, String year) {
        this.id = id;
        this.studentNumber = studentNumber;
        this.name = name;
        this.departmentId = departmentId;
        this.year = year;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(String departmentId) {
        this.departmentId = departmentId;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }
}
