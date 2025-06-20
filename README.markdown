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

## Hướng Dẫn Thiết Lập Cơ Sở Dữ Liệu

### Yêu Cầu
- PHP >= 8.0
- Laravel >= 9.x
- MySQL >= 5.7 hoặc cơ sở dữ liệu tương thích
- Composer
- Laravel Artisan CLI

### Các Bước Thiết Lập

1. **Tải Repository**
   ```bash
   git clone <đường_dẫn_repository>
   cd <thư_mục_repository>
   ```

2. **Cài Đặt Phụ Thuộc**
   ```bash
   composer install
   ```

3. **Cấu Hình Môi Trường**
   - Sao chép file `.env.example` thành `.env`:
     ```bash
     cp .env.example .env
     ```
   - Cập nhật thông tin kết nối cơ sở dữ liệu trong file `.env`:
     ```env
     DB_CONNECTION=mysql
     DB_HOST=127.0.0.1
     DB_PORT=3306
     DB_DATABASE=ten_cơ_sở_dữ_liệu
     DB_USERNAME=ten_người_dùng
     DB_PASSWORD=mật_khẩu
     ```
   - Tạo khóa ứng dụng:
     ```bash
     php artisan key:generate
     ```

4. **Chạy Migration**
   - Tạo cơ sở dữ liệu trong MySQL:
     ```sql
     CREATE DATABASE ten_cơ_sơ_dữ_liệu;
     ```
   - Chạy migration để tạo bảng `cities` và `wards`:
     ```bash
     php artisan migrate
     ```

5. **Nạp Dữ Liệu (Tùy Chọn)**
   - Nếu bạn có seeder để nạp dữ liệu vào bảng `cities` và `wards`, chạy:
     ```bash
     php artisan db:seed --class=tên_class
     ```
   - Hoặc sử dụng file JSON (ví dụ: `test.json`) và logic trong controller để chèn dữ liệu từ code.