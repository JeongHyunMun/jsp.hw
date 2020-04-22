package lecture1.form02;

public class User {
    String userid;
    String password;
    String name;
    String email;
    int department;

    public User(String userid, String name, String password, String email, int department) {
        this.userid = userid;
        this.name = name;
        this.password = password;
        this.email = email;
        this.department = department;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getDepartment() {
        return department;
    }

    public void setDepartment(int department) {
        this.department = department;
    }
}
