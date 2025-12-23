# Bài 2. Bắt đầu với Remix IDE
-Tạo tài khoản Remix IDE (https://remix.ethereum.org)
Cho đoạn code sau:
```solidity
pragma solidity ^0.5.0;

contract SolidityTest {
    constructor() public {
    }
    function getResult() public view returns(uint) {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        return result;
    }
}
```
Tìm cách chạy thử chúng, nếu không chạy được, hãy sửa để có thể chạy!

## Sửa chữa ✅

- Thêm `// SPDX-License-Identifier: MIT` và cập nhật `pragma` lên `^0.8.20` để tương thích với trình biên dịch hiện tại.
- `constructor` trong Solidity >= 0.7 không cần (`public`) -> dùng `constructor()`.
- Hàm `getResult` không truy xuất trạng thái hợp đồng nên nên khai báo là `pure`:
  - view: đọc dữ liệu hợp đồng
  - pure: tính toán dựa trên đầu vào

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SolidityTest {
    constructor() {
    }
    
    function getResult() public pure returns(uint) {
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        return result;
    }
}
```
