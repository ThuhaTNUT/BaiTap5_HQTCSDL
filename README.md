# Bài tập 05 - HQTCSDL - Trần Thị Thu Hà - K225480106009
# Đồ án PTTKHT: Điểm danh bằng nhận diện khuôn mặt 
# Yêu cầu: Đưa ra danh sách các bảng dữ liệu, các trường với các bảng dữ liệu phù hợp, PK, FK, CK hợp lý

# Bài làm
## Ta có các bảng CSDL như sau:
+ NguoiDung: #ID_nguoidung, hoten, matkhau, vaitro, email, lienkettoi
+ SinhVien: #MSSV, hoten, ngaysinh, gioitinh, @malop, @maph, email
+ PhuHuynh: #maph, hoten, sdt, email
+ GiaoVien: #magv, hoten, sdt, email
+ Lop: #malop, tenlop, @magv
+ MonHoc: #mamon, tenmon
+ LichHoc: #mamon, tenmon
+ LichThucTe: #ID_lichTT, @ID_lich, ngayhoc
+ FaceData: #ID_lichTT, @ID_lich, ngayhoc
+ DiemDanh: #ID_Diemdanh, @MSSV, @ID_lich, ngaythamgia, giovaolop, trangthai
+ ThongBao: #ID_ThongBao, @ID_Diemdanh, ngaygui, noidung, trangthaigui
## Tạo bảng trên SQL Server 
### 1. Bảng người dùng: #ID_nguoidung, hoten, matkhau, vaitro, email, lienkettoi
![image](https://github.com/user-attachments/assets/df8bb46d-0021-4941-9b7b-a36006e991a7)
### 2. Bảng sinh viên: #MSSV, hoten, ngaysinh, gioitinh, @malop, @maph, email
![image](https://github.com/user-attachments/assets/8ffea01b-bda0-4f80-8d8b-ef93f644b1cf)
### 3. Bảng phụ huynh: #maph, hoten, sdt, email
![image](https://github.com/user-attachments/assets/a75a8563-fab5-4dfb-badf-90d064b68f54)

### 4. Bảng giáo viên: magv, hoten, sdt, email
![image](https://github.com/user-attachments/assets/615df59a-4b9d-428d-bf78-bb046e4dfdfa)

### 5. Bảng lớp: #malop, tenlop, @magv
![image](https://github.com/user-attachments/assets/0798f36f-13fb-4611-8b23-69c56eebb5a2)

### 6. Bảng môn học: #mamon, tenmon
![image](https://github.com/user-attachments/assets/7a1a71eb-c1e4-4fec-8a1d-3517bf9cdf4f)

### 7. Bảng lịch học: #mamon, tenmon
![image](https://github.com/user-attachments/assets/4130bd5b-0270-4305-9a1b-bbaea9cca044)

### 8. Bảng lịch thực tế: #ID_lichTT, @ID_lich, ngayhoc
![image](https://github.com/user-attachments/assets/e49d76e9-8c0b-4809-b92c-1f2a932d37e3)

### 9. Bảng FaceData: #ID_lichTT, @ID_lich, ngayhoc
![image](https://github.com/user-attachments/assets/444d42be-5aed-423a-9e90-0557aba6f4f1)

### 10. Bảng điểm danh: #ID_Diemdanh, @MSSV, @ID_lich, ngaythamgia, giovaolop, trangthai
![image](https://github.com/user-attachments/assets/ae976c54-501d-4b87-aeac-cf19066e4ccb)

### 11. Thông báo: #ID_ThongBao, @ID_Diemdanh, ngaygui, noidung, trangthaigui
![image](https://github.com/user-attachments/assets/60002538-a75b-4bb7-a4ba-b4a921f5656e)
