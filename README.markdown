# Hướng Dẫn Thiết Lập Cơ Sở Dữ Liệu

Tài liệu này cung cấp thông tin chi tiết về cấu trúc cơ sở dữ liệu của ứng dụng, bao gồm bảng `cities` và `wards`, các cột, kiểu dữ liệu và hướng dẫn thiết lập.

## Cấu Trúc Cơ Sở Dữ Liệu

### Bảng: `cities`

Bảng `cities` lưu trữ thông tin về các tỉnh/thành phố.

| Cột          | Kiểu Dữ Liệu      | Mô Tả                                            | Ràng Buộc                       |
|--------------|-------------------|--------------------------------------------------|---------------------------------|
| `id`         | Big Integer       | Khóa chính, tự động tăng                         | Khóa Chính                      |
| `name`       | Varchar(50)       | Tên tỉnh/thành (VD: "An Giang")                  | Không Null, Tối đa 50 ký tự     |
| `slug`       | Varchar(100)      | Chuỗi thân thiện URL (VD: "an-giang")            | Có thể Null, Tối đa 100 ký tự   |
| `description`| Text              | Mô tả thêm về tỉnh/thành                         | Có thể Null                     |
| `deleted_at` | Timestamp         | Thời gian xóa mềm                                | Có thể Null, Có Index           |
| `created_at` | Timestamp         | Thời gian tạo bản ghi                            | Có thể Null                     |
| `updated_at` | Timestamp         | Thời gian cập nhật bản ghi                       | Có thể Null                     |

### Bảng: `wards`

Bảng `wards` lưu trữ thông tin về các xã/phường trong một tỉnh/thành.

| Cột          | Kiểu Dữ Liệu      | Mô Tả                                            | Ràng Buộc                       |
|--------------|-------------------|--------------------------------------------------|---------------------------------|
| `id`         | Big Integer       | Khóa chính, tự động tăng                         | Khóa Chính                      |
| `name`       | Varchar(50)       | Tên huyện/quận (VD: "An Biên")                   | Không Null, Tối đa 50 ký tự     |
| `slug`       | Varchar(100)      | Chuỗi thân thiện URL (VD: "an-bien")             | Có thể Null, Tối đa 100 ký tự   |
| `description`| Text              | Danh sách xã/phường hoặc chi tiết bổ sung        | Có thể Null                     |
| `city_id`    | Big Integer       | Khóa ngoại tham chiếu đến `cities.id`            | Khóa Ngoại, Xóa Liên Đới        |
| `deleted_at` | Timestamp         | Thời gian xóa mềm                                | Có thể Null, Có Index           |
| `created_at` | Timestamp         | Thời gian tạo bản ghi                            | Có thể Null                     |
| `updated_at` | Timestamp         | Thời gian cập nhật bản ghi                       | Có thể Null                     |

### Mối Quan Hệ
- **Một-Đối-Nhiều**: Một `city` (tỉnh/thành) có thể có nhiều `wards` (huyện/quận). Cột `city_id` trong bảng `wards` liên kết với cột `id` trong bảng `cities`.
- **Xóa Liên Đới**: Khi xóa một tỉnh/thành, tất cả các xã/phường liên quan sẽ tự động bị xóa.
