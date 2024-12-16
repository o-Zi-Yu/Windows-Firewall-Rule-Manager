# FirewallRuleManager

## English

### Description
**FirewallRuleManager** is a lightweight batch script tool designed for managing Windows Firewall rules for `.exe` files. This project provides two scripts:
- **`block.bat`**: Adds inbound and outbound firewall rules for `.exe` files in the directory where the script resides and all its subdirectories.
- **`unblock.bat`**: Removes the firewall rules added by `block.bat` for `.exe` files in the same directory and subdirectories.

### Usage
1. Place the `.bat` files (`block.bat` and `unblock.bat`) in the folder containing the `.exe` files you want to manage.
2. **Run as Administrator**:
   - Right-click `block.bat` → Select **Run as Administrator** → This will add inbound and outbound rules for all `.exe` files.
   - Right-click `unblock.bat` → Select **Run as Administrator** → This will remove the rules added by `block.bat`.
3. Note: Rules are identified by name. You must use `block.bat` and `unblock.bat` together to ensure proper functionality.

### Disclaimer
1. This script is created to simplify network configuration, but it interacts with sensitive system settings.
2. Always verify the script content before executing it. Running unchecked `.bat` files may lead to unintended system configuration changes or security risks.

**Risks**:
- **Misconfiguration**: Could block legitimate programs from accessing the network.
- **Permission Requirements**: Requires Administrator privileges; only run in trusted environments.
- **Compatibility Issues**: Designed for Windows Firewall management; may not work on other systems.

**Recommendations**:
- Backup system configurations before running the script.
- Carefully review the script content to ensure there are no unintended commands.
- Use only in trusted environments, and avoid public/shared devices.

**Final User Responsibility**: Running this script signifies your acceptance of all associated risks.

---

## 中文

### 项目简介
**FirewallRuleManager** 是一个轻量级的批处理脚本工具，用于管理 `.exe` 文件的 Windows 防火墙规则。项目包含两个脚本：
- **`block.bat`**：为脚本所在目录及其子目录中的所有 `.exe` 文件添加防火墙入站和出站规则。
- **`unblock.bat`**：移除由 `block.bat` 为 `.exe` 文件添加的防火墙规则。

### 使用方法
1. 将 `block.bat` 和 `unblock.bat` 放入包含目标 `.exe` 文件的文件夹中。
2. **以管理员权限运行**：
   - 右键 `block.bat` → 选择 **以管理员身份运行** → 脚本将为所有 `.exe` 文件添加入站和出站规则。
   - 右键 `unblock.bat` → 选择 **以管理员身份运行** → 脚本将移除由 `block.bat` 添加的规则。
3. 注意：规则是通过名称识别的，因此必须将 `block.bat` 和 `unblock.bat` 配合使用，确保功能正常。

### 免责声明
1. 此脚本旨在简化网络配置，但可能涉及敏感系统设置。
2. 在运行任何 `.bat` 文件之前，请务必核对脚本内容，确保其功能与您的需求一致。未经检查直接运行脚本，可能导致意外的系统配置更改或安全风险。

**风险**：
- **误操作风险**：可能阻止合法程序的网络访问。
- **权限风险**：需要以管理员权限运行脚本，请仅在可信环境中使用。
- **兼容性风险**：脚本适用于 Windows 防火墙管理，可能无法在其他系统上正常运行。

**建议**：
- 运行前，请备份相关系统设置或文件。
- 仔细阅读脚本内容，确保没有潜在恶意命令。
- 仅在受信任的环境中运行脚本，避免用于公共或共享设备。

**最终用户责任**：运行本脚本即表示您接受并承担所有与此相关的风险。
