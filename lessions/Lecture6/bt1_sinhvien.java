import java.util.Scanner;

public class SinhVien {
    private String maSV;
    private String hoTen;
    private int tuoi;
    private double diemTB;
    private String lop;

    // Constructor mặc định
    public SinhVien() {}

    // Constructor đầy đủ
    public SinhVien(String maSV, String hoTen, int tuoi, double diemTB, String lop) {
        this.maSV = maSV;
        this.hoTen = hoTen;
        this.tuoi = tuoi;
        this.diemTB = diemTB;
        this.lop = lop;
    }

    // Getter và Setter
    public String getMaSV() { return maSV; }
    public void setMaSV(String maSV) { this.maSV = maSV; }

    public String getHoTen() { return hoTen; }
    public void setHoTen(String hoTen) { this.hoTen = hoTen; }

    public int getTuoi() { return tuoi; }
    public void setTuoi(int tuoi) { this.tuoi = tuoi; }

    public double getDiemTB() { return diemTB; }
    public void setDiemTB(double diemTB) { this.diemTB = diemTB; }

    public String getLop() { return lop; }
    public void setLop(String lop) { this.lop = lop; }

    // Nhập thông tin sinh viên
    public void nhapThongTin() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Nhập mã SV: ");
        maSV = sc.nextLine();
        System.out.print("Nhập họ tên: ");
        hoTen = sc.nextLine();
        System.out.print("Nhập tuổi: ");
        tuoi = Integer.parseInt(sc.nextLine());
        System.out.print("Nhập điểm TB: ");
        diemTB = Double.parseDouble(sc.nextLine());
        System.out.print("Nhập lớp: ");
        lop = sc.nextLine();
    }

    // Hiển thị thông tin
    public void hienThiThongTin() {
        System.out.printf("%-10s %-20s %-5d %-10.2f %-10s\n", maSV, hoTen, tuoi, diemTB, lop);
    }
}
