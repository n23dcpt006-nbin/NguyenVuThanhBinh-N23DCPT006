package bt5_java;
public class Customer {
    // fields private -> encapsulation
    private int id;
    private String name;
    private String email;

    // constructor
    public Customer(int id, String name, String email) {
        this.id = id;
        setName(name);   // dùng setter để áp dụng kiểm tra
        setEmail(email);
    }

    // getter
    public int getId() {
        return id;
    }

    // name getter/setter with simple validation
    public String getName() {
        return name;
    }

    public void setName(String name) {
        if (name == null || name.trim().isEmpty()) {
            throw new IllegalArgumentException("Name must not be empty");
        }
        this.name = name.trim();
    }

    // email getter/setter with basic validation
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        if (email == null || !email.contains("@")) {
            throw new IllegalArgumentException("Invalid email");
        }
        this.email = email;
    }

    @Override
    public String toString() {
        return "Customer{" + "id=" + id + ", name='" + name + '\'' + ", email='" + email + '\'' + '}';
    }
}
