package bt5_java;
public class Main {
    public static void main(String[] args) {
        Customer c = new Customer(1, "Binh Nguyen", "binh@example.com");
        System.out.println(c);
        c.setEmail("new@mail.com");
        System.out.println(c.getEmail());
    }
}
