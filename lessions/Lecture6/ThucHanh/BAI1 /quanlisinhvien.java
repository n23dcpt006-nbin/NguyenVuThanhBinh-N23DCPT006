import java.util.ArrayList;
import java.util.Scanner;

public class QuanLySinhVien {
    private ArrayList<SinhVien> danhSach = new ArrayList<>();

    // Thêm sinh viên
    public void themSinhVien() {
        SinhVien sv = new SinhVien();
        sv.nhapThongTin();
        danhSach.add(sv);
        System.out.println("✅ Đã thêm sinh viên!");
    }

    // Hiển thị danh sách
    public void hienThiDanhSach() {
        if (danhSach.isEmpty()) {
            System.out.println("⚠️ Danh sách trống!");
            return;
        }
        System.out.printf("%-10s %-20s %-5s %-10s %-10s\n", "Mã SV", "Họ Tên", "Tuổi", "Điểm TB", "Lớp");
        for (SinhVien sv : danhSach) {
            sv.hienThiThongTin();
        }
    }

    // Tìm sinh viên theo mã
    public void timSinhVienTheoMa(String ma) {
        for (SinhVien sv : danhSach) {
            if (sv.getMaSV().equalsIgnoreCase(ma)) {
                System.out.println("✅ Đã tìm thấy:");
                sv.hienThiThongTin();
                return;
            }
        }
        System.out.println("❌ Không tìm thấy sinh viên có mã: " + ma);
    }

    // Xóa sinh viên theo mã
    public void xoaSinhVien(String ma) {
        SinhVien xoa = null;
        for (SinhVien sv : danhSach) {
            if (sv.getMaSV().equalsIgnoreCase(ma)) {
                xoa = sv;
                break;
            }
        }
        if (xoa != null) {
            danhSach.remove(xoa);
            System.out.println("✅ Đã xóa sinh viên có mã: " + ma);
        } else {
            System.out.println("❌ Không tìm thấy sinh viên để xóa!");
        }
    }
}
