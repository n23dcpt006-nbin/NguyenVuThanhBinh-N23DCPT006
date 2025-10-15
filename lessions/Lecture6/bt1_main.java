import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        QuanLySinhVien ql = new QuanLySinhVien();
        int choice;

        do {
            System.out.println("\n=== MENU QUẢN LÝ SINH VIÊN ===");
            System.out.println("1. Thêm sinh viên");
            System.out.println("2. Hiển thị danh sách");
            System.out.println("3. Tìm sinh viên theo mã");
            System.out.println("4. Xóa sinh viên theo mã");
            System.out.println("0. Thoát");
            System.out.print("Chọn: ");
            choice = sc.nextInt();
            sc.nextLine(); // clear buffer

            switch (choice) {
                case 1 -> ql.themSinhVien();
                case 2 -> ql.hienThiDanhSach();
                case 3 -> {
                    System.out.print("Nhập mã SV cần tìm: ");
                    String ma = sc.nextLine();
                    ql.timSinhVienTheoMa(ma);
                }
                case 4 -> {
                    System.out.print("Nhập mã SV cần xóa: ");
                    String ma = sc.nextLine();
                    ql.xoaSinhVien(ma);
                }
                case 0 -> System.out.println("👋 Kết thúc chương trình!");
                default -> System.out.println("❌ Lựa chọn không hợp lệ!");
            }
        } while (choice != 0);
    }
}
