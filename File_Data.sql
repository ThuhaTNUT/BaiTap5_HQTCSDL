USE [DDKM]
GO
INSERT [dbo].[GiaoVien] ([MaGV], [Hoten], [SDT], [Email]) VALUES (N'GV001          ', N'Đỗ Duy Cốp', N'0988111222', N'gv001@gmail.com                                                                                     ')
INSERT [dbo].[GiaoVien] ([MaGV], [Hoten], [SDT], [Email]) VALUES (N'GV002          ', N'Trần Thị Thanh ', N'0977766544', N'gv002@gmail.com                                                                                     ')
GO
INSERT [dbo].[Lop] ([Malop], [Tenlop], [MaGV]) VALUES (N'L001           ', N'CNTT1', N'GV001          ')
INSERT [dbo].[Lop] ([Malop], [Tenlop], [MaGV]) VALUES (N'L002           ', N'CNTT2', N'GV002          ')
GO
INSERT [dbo].[MonHoc] ([Mamon], [Tenmon]) VALUES (N'MH001          ', N'Hệ quản trị cơ sở dữ liệu')
INSERT [dbo].[MonHoc] ([Mamon], [Tenmon]) VALUES (N'MH002          ', N'Phân tích thiết kế hệ thống ')
GO
INSERT [dbo].[LichHoc] ([ID_lich], [Malop], [Mamon], [MaGV], [Thu], [Giobatdau], [Gioketthuc]) VALUES (N'LH001          ', N'L001           ', N'MH001          ', N'GV001          ', 5, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time))
INSERT [dbo].[LichHoc] ([ID_lich], [Malop], [Mamon], [MaGV], [Thu], [Giobatdau], [Gioketthuc]) VALUES (N'LH002          ', N'L002           ', N'MH002          ', N'GV002          ', 4, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time))
GO
INSERT [dbo].[LichThucTe] ([ID_lichTT], [ID_lich], [Ngayhoc]) VALUES (N'LTT001         ', N'LH001          ', CAST(N'2025-04-20' AS Date))
INSERT [dbo].[LichThucTe] ([ID_lichTT], [ID_lich], [Ngayhoc]) VALUES (N'LTT002         ', N'LH001          ', CAST(N'2025-04-22' AS Date))
INSERT [dbo].[LichThucTe] ([ID_lichTT], [ID_lich], [Ngayhoc]) VALUES (N'LTT003         ', N'LH002          ', CAST(N'2025-04-22' AS Date))
GO
INSERT [dbo].[Phuhuynh] ([MaPH], [Hoten], [SDT], [Email]) VALUES (1, N'Nguyễn Văn An ', N'0909123456', N'ph001@gmail.com')
INSERT [dbo].[Phuhuynh] ([MaPH], [Hoten], [SDT], [Email]) VALUES (2, N'Trần Thị Ban ', N'0912233445', N'ph002@gmail.com')
GO
INSERT [dbo].[SinhVien] ([MSSV], [Hoten], [Ngaysinh], [Gioitinh], [Malop], [MaPH], [Email], [Sobuoithamgiahoc]) VALUES (N'SV001          ', N'Phạm Minh Anh ', CAST(N'2004-03-15' AS Date), N'Nam', N'L001           ', 1, N'sv001@stu.edu.vn                                                                                    ', 2)
INSERT [dbo].[SinhVien] ([MSSV], [Hoten], [Ngaysinh], [Gioitinh], [Malop], [MaPH], [Email], [Sobuoithamgiahoc]) VALUES (N'SV002          ', N'Trần Thị Bình', CAST(N'2004-08-22' AS Date), N'Nu', N'L002           ', 2, N'sv002@stu.edu.vn                                                                                    ', 1)
GO
INSERT [dbo].[DiemDanh] ([ID_diemdanh], [MSSV], [ID_lich], [Ngaythamgia], [Giovaolop], [Trangthai]) VALUES (N'DD001          ', N'SV001          ', N'LH001          ', CAST(N'2025-04-20' AS Date), CAST(N'09:20:00' AS Time), N'Có mặt')
INSERT [dbo].[DiemDanh] ([ID_diemdanh], [MSSV], [ID_lich], [Ngaythamgia], [Giovaolop], [Trangthai]) VALUES (N'DD002          ', N'SV002          ', N'LH001          ', CAST(N'2025-04-22' AS Date), CAST(N'09:25:00' AS Time), N'Có mặt')
INSERT [dbo].[DiemDanh] ([ID_diemdanh], [MSSV], [ID_lich], [Ngaythamgia], [Giovaolop], [Trangthai]) VALUES (N'DD003          ', N'SV001          ', N'LH002          ', CAST(N'2025-04-22' AS Date), CAST(N'06:40:00' AS Time), N'Vắng mặt')
INSERT [dbo].[DiemDanh] ([ID_diemdanh], [MSSV], [ID_lich], [Ngaythamgia], [Giovaolop], [Trangthai]) VALUES (N'DD1000         ', N'SV001          ', N'LH001          ', CAST(N'2025-04-23' AS Date), CAST(N'09:30:00' AS Time), N'Có mặt')
GO
INSERT [dbo].[ThongBao] ([ID_ThongBao], [ID_diemdanh], [Ngaygui], [Noidung], [Trangthaigui]) VALUES (N'TB001          ', N'DD003          ', CAST(N'2025-04-22' AS Date), N'Sinh vien vang buoi hoc ngay 22/04/2025', 1)
GO
INSERT [dbo].[User] ([ID_Nguoidung], [Hoten], [Matkhau], [Vaitro], [Email], [MSSV], [MaPH], [MaGV]) VALUES (N'ND001          ', N'Phạm Minh Anh ', N'MA123456', N'Sinh viên', N'sv001@stu.edu.vn', N'SV001          ', NULL, NULL)
INSERT [dbo].[User] ([ID_Nguoidung], [Hoten], [Matkhau], [Vaitro], [Email], [MSSV], [MaPH], [MaGV]) VALUES (N'ND002          ', N'Trần Thị Bình', N'B1234567', N'Sinh viên', N'sv002@stu.edu.vn', N'SV002          ', NULL, NULL)
INSERT [dbo].[User] ([ID_Nguoidung], [Hoten], [Matkhau], [Vaitro], [Email], [MSSV], [MaPH], [MaGV]) VALUES (N'ND003          ', N'Nguyễn Văn An ', N'PH987654', N'Phụ huynh', N'ph001@gmail.com', NULL, 1, NULL)
INSERT [dbo].[User] ([ID_Nguoidung], [Hoten], [Matkhau], [Vaitro], [Email], [MSSV], [MaPH], [MaGV]) VALUES (N'ND004          ', N'Đỗ Duy Cốp', N'GV123456', N'Giáo viên', N'gv001@gmail.com', NULL, NULL, N'GV001          ')
INSERT [dbo].[User] ([ID_Nguoidung], [Hoten], [Matkhau], [Vaitro], [Email], [MSSV], [MaPH], [MaGV]) VALUES (N'ND005          ', N'Trần Thị Ban ', N'PH123456', N'Phụ huynh ', N'ph002@gmail.com', NULL, 2, NULL)
INSERT [dbo].[User] ([ID_Nguoidung], [Hoten], [Matkhau], [Vaitro], [Email], [MSSV], [MaPH], [MaGV]) VALUES (N'ND006          ', N'Trần Thị Thanh ', N'GV987654', N'Giáo viên', N'gv002@gmail.com', NULL, NULL, N'GV002          ')
GO
INSERT [dbo].[FaceDate] ([FaceID], [MSSV], [Imagepath]) VALUES (N'FD001          ', N'SV001          ', N'A.jpg')
INSERT [dbo].[FaceDate] ([FaceID], [MSSV], [Imagepath]) VALUES (N'FD002          ', N'SV002          ', N'B.jpg')
GO
SET IDENTITY_INSERT [dbo].[LogHoatDong] ON 

INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (1, CAST(N'2025-04-23T20:33:54.967' AS DateTime), N'SV001          ', N'Thêm', N'Thêm điểm danh: Lớp LH001          , Ngày 2025-04-23, Tr?ng thái Có mặt', N'AD01')
INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (2, CAST(N'2025-04-23T20:36:00.413' AS DateTime), N'SV001          ', N'Cập nhật', N'Trạng thái từ "Có mặt" thành "Vắng"', N'AD01')
INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (3, CAST(N'2025-04-23T20:36:47.463' AS DateTime), N'SV001          ', N'Xóa', N'Xóa điểm danh: Lớp LH001          , Ngày 2025-04-23, Tr?ng thái Vắng', N'AD01')
INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (4, CAST(N'2025-04-23T20:40:48.587' AS DateTime), N'SV001          ', N'Thêm', N'Thêm điểm danh: Lớp LH001          , Ngày 2025-04-23, Tr?ng thái Có mặt', N'AD01')
INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (5, CAST(N'2025-04-23T20:40:48.590' AS DateTime), N'SV001          ', N'Cập nhật', N'Trạng thái từ "Có mặt" thành "Vắng"', N'AD01')
INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (6, CAST(N'2025-04-23T20:40:48.590' AS DateTime), N'SV001          ', N'Xóa', N'Xóa điểm danh: Lớp LH001          , Ngày 2025-04-23, Tr?ng thái Vắng', N'AD01')
INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (7, CAST(N'2025-04-23T20:41:10.427' AS DateTime), N'SV001          ', N'Thêm', N'Thêm điểm danh: Lớp LH001          , Ngày 2025-04-23, Tr?ng thái Có mặt', N'AD01')
INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (8, CAST(N'2025-04-23T20:41:10.430' AS DateTime), N'SV001          ', N'Cập nhật', N'Trạng thái từ "Có mặt" thành "Vắng"', N'AD01')
INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (9, CAST(N'2025-04-23T20:41:10.430' AS DateTime), N'SV001          ', N'Xóa', N'Xóa điểm danh: Lớp LH001          , Ngày 2025-04-23, Tr?ng thái Vắng', N'AD01')
INSERT [dbo].[LogHoatDong] ([ID_Log], [ThoiGian], [MSSV], [HanhDong], [NoiDung], [ID_NguoiDung]) VALUES (10, CAST(N'2025-04-23T20:45:25.680' AS DateTime), N'SV001          ', N'Thêm', N'Thêm điểm danh: Lớp LH001          , Ngày 2025-04-23, Tr?ng thái Có mặt', N'AD01')
SET IDENTITY_INSERT [dbo].[LogHoatDong] OFF
GO
