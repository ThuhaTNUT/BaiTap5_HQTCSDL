# Bài tập 05 - HQTCSDL - Trần Thị Thu Hà - K225480106009
SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

# Bài làm
# A: Trình bày lại đầu bài của đồ án PT&TKHT:
## Đồ án PTTKHT: Điểm danh bằng nhận diện khuôn mặt 
## Yêu cầu: Đưa ra danh sách các bảng dữ liệu, các trường với các bảng dữ liệu phù hợp, PK, FK, CK hợp lý
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
### Dưới đây là sơ đồ Diagrams của cơ sở dữ liệu
![image](https://github.com/user-attachments/assets/6af290ce-6d44-4b92-a0e9-25f99cfd732b)
# B: Nội dung bài tập
## Cơ sở dữ liệu này hiện đã được chuẩn hóa về 3NF nên không có trường phi chuẩn nào rõ ràng có thể tính toán được vì vậy tôi sẽ thêm một trường phi chuẩn tính số buổi tham gia học của sinh viên vào bảng sinh viên và có thể thống kê được từ bảng điểm danh

Bảng sinh viên sau khi đã thêm trường phi chuẩn Sobuoithamgiahoc
![image](https://github.com/user-attachments/assets/7feb2c08-1080-4617-9237-3f45560d0ac1)

# Sau khi cho thêm trường phi chuẩn sẽ đem lại được những lợi ích tốt hơn như:
- Tốc độ truy vấn tăng vì khi truy vấn số buổi tham gia từ bảng điểm danh thường sẽ tốn tài nguyên hơn nên khi lưu sẵn số buổi điểm danh vào bảng sinh viên sẽ giúp hiển thị bảng điểm danh nhanh hơn
- Tốc độ phân trang/hiển thị danh sách: khi cần hiển thị danh sách tất cả các sinh viên cùng với số buổi tham gia thì không cần dùng JOIN hay COUNT phức tạp nữa mà chỉ cần lấy trực tiếp từ bảng sinh viên
- Giảm số lần truy cập: Vì bảng điểm danh có rất nhiều dòng nên việc tính toán liên tục có thể gây chậm, việc lưu sẵn giúp giảm số lần truy cập I/O

## Nhập dữ liệu demo để sự hiệu quả của việc trigger auto run
- Bảng User:
![image](https://github.com/user-attachments/assets/0f3cb2b5-d603-4974-822f-805f7603498e)
- Bảng sinh viên:
![image](https://github.com/user-attachments/assets/28688887-84a2-40bc-bc71-a21d51851207)
- Bảng phụ huynh:
![image](https://github.com/user-attachments/assets/cf169079-9d52-433e-b0e4-7ab7d278cd2f)
- Bảng giáo viên:
![image](https://github.com/user-attachments/assets/ebe71292-5f63-4725-8b09-a51370d1ccc0)
- Bảng lớp:
![image](https://github.com/user-attachments/assets/1fba9a9c-b79a-4d2f-a609-3df357b0279a)
- Bảng môn học:
![image](https://github.com/user-attachments/assets/6f9f3f00-b285-4479-95b9-3d12640fc07b)
- Bảng lịch học:
![image](https://github.com/user-attachments/assets/8f958a25-e6f5-4f2b-ad18-33e4a91df76f)
- Bảng FaceData:
![image](https://github.com/user-attachments/assets/fa8789be-fa48-47ae-9ac4-83a53062e5c8)
- Bảng lịch học thực tế:
![image](https://github.com/user-attachments/assets/8fea5742-68cc-4784-92c4-b9050a5b7459)
- Bảng điểm danh:
![image](https://github.com/user-attachments/assets/5048ae16-e368-4e3a-a9b4-4be9c88a6fe4)
- Bảng thông báo:
![image](https://github.com/user-attachments/assets/708f528c-5320-491f-986c-09f35037b049)
## Viết Trigger cho bảng điểm danh: 
``` sql
CREATE TABLE LogHoatDong (
    ID_Log INT IDENTITY(1,1) PRIMARY KEY,
    ThoiGian DATETIME DEFAULT GETDATE(),
    MSSV NVARCHAR(20),
    HanhDong NVARCHAR(50),
    NoiDung NVARCHAR(255),
    ID_NguoiDung NVARCHAR(20) -- Ai thực hiện
);

-- Set trong session hiện tại: giả sử ID_NguoiDung là 'AD01'
EXEC sp_set_session_context 'ID_NguoiDung', 'ND001';

CREATE OR ALTER TRIGGER trg_Log_DiemDanh
ON DiemDanh
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    DECLARE @IDNguoiDung NVARCHAR(20)
    SELECT @IDNguoiDung = CONVERT(NVARCHAR(20), SESSION_CONTEXT(N'ID_NguoiDung'))

    -- Thêm log
    INSERT INTO LogHoatDong (MSSV, HanhDong, NoiDung, ID_NguoiDung)
    SELECT 
        MSSV, 
        N'Thêm',
        CONCAT(N'Thêm điểm danh: Lớp ', ID_Lich, ', Ngày ', NgayThamGia, ', Trạng thái ', TrangThai),
        @IDNguoiDung
    FROM inserted
    WHERE NOT EXISTS (
        SELECT 1 FROM deleted WHERE deleted.ID_diemdanh = inserted.ID_diemdanh
    );

    -- Xóa log
    INSERT INTO LogHoatDong (MSSV, HanhDong, NoiDung, ID_NguoiDung)
    SELECT 
        MSSV, 
        N'Xóa',
        CONCAT(N'Xóa điểm danh: Lớp ', ID_Lich, ', Ngày ', NgayThamGia, ', Trạng thái ', TrangThai),
        @IDNguoiDung
    FROM deleted
    WHERE NOT EXISTS (
        SELECT 1 FROM inserted WHERE inserted.ID_diemdanh = deleted.ID_diemdanh
    );

    -- Cập nhật trạng thái
    INSERT INTO LogHoatDong (MSSV, HanhDong, NoiDung, ID_NguoiDung)
    SELECT 
        i.MSSV,
        N'Cập nhật',
        CONCAT(N'Trạng thái từ "', d.TrangThai, '" thành "', i.TrangThai, '"'),
        @IDNguoiDung
    FROM inserted i
    JOIN deleted d ON i.ID_diemdanh = d.ID_diemdanh
    WHERE ISNULL(i.TrangThai, '') <> ISNULL(d.TrangThai, '');
END;
```
- Ở đoạn trigger này giúp cập nhật số buổi tham gia học cho sinh viên: mỗi khi có thay đổi dữ liệu điểm danh (thêm, xóa, sửa), trigger này tự động đếm lại số buổi đã điểm danh của sinh viên đó và cập nhật lại trường SoBuoiThamGiaHoc trong bảng SinhVien
- Duy trì tính nhất quán dữ liệu giữa bảng điểm danh và bảng sinh viên tránh tình trạng buổi học bị sai lệch mỗi khi quên cập nhật thủ công
- Tối ưu hóa hiệu suất dữ liệu thống kê, giúp truy vấn nhanh hơn

## Kết quả kiểm tra trigger: 
![image](https://github.com/user-attachments/assets/a07b0eef-010f-483e-b203-81509c6f6a7d)

## Kết luận: 
Trigger đóng vai trò như một cơ chế tự động hỗ trợ đảm bảo tính toàn vẹn và hiệu quả của dữ liệu, là một thành phần quan trọng giúp hệ thống điểm danh vận hành mượt mà, chính xác và giảm thiểu sai sót thủ công trong quá trình quản lý dữ liệu sinh viên.
Tự động hóa tính toán: Trigger trg_Log_DiemDanh giúp tự động cập nhật số buổi tham gia học của từng sinh viên trong bảng SinhVien mỗi khi có thay đổi trong bảng DiemDanh (thêm, sửa, xóa).
