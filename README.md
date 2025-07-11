# ReinstallHuiXiaowei

一键重新安装惠小微应用的批处理脚本

## 📖 项目简介

`ReinstallHuiXiaowei` 是一个 Windows 批处理脚本，用于自动重新安装惠小微 UWP 应用。当应用出现问题或需要重置时，该脚本能够自动完成卸载和重新安装的整个过程。

## ✨ 功能特性

- 🔍 **智能检测**：自动检测 Winget 是否已安装
- 🔄 **自动重装**：先卸载后安装，确保应用完全重置
- 🚀 **自动启动**：安装完成后自动打开应用
- 📝 **详细日志**：显示每个步骤的执行状态
- ⚡ **静默安装**：支持静默模式，减少用户交互

## 🛠️ 系统要求

- Windows 10 1709 (16299) 或更高版本
- 已安装 [Windows Package Manager (Winget)](https://github.com/microsoft/winget-cli)
- 管理员权限（推荐）

## 📥 安装说明

### 方法一：直接下载

1. 下载 `ReinstallHuiXiaowei.bat` 文件
2. 右键点击文件，选择"以管理员身份运行"

### 方法二：Git 克隆

```bash
git clone https://github.com/hongjiapeng/ReinstallHuiXiaowei.git
cd ReinstallHuiXiaowei
```

## 🚀 使用方法

### 基本使用

双击 `ReinstallHuiXiaowei.bat` 文件或在命令行中运行：

```cmd
ReinstallHuiXiaowei.bat
```

### 高级配置

打开脚本文件，可以修改以下配置：

```bat
REM 惠小微应用的 ID（通常不需要修改）
set "AppID=9NXGP82LMGJV"

REM 安装完成后是否自动打开应用
REM 1 = 自动打开，0 = 提示用户选择
set "OpenAppAfterInstall=1"
```

## 📋 执行流程

1. **环境检查**
   - 检测 Winget 是否已安装
   - 如未安装，提示用户先安装 Winget

2. **应用状态检查**
   - 检测惠小微应用是否已安装
   - 如已安装，执行卸载操作

3. **重新安装**
   - 使用 Winget 安装最新版本的惠小微应用
   - 显示安装进度和结果

4. **自动启动**
   - 安装成功后自动打开应用
   - 使用 `hp-xiaowei:` 协议启动

## 🔧 故障排除

### 常见问题

**Q: 提示 "Winget is not installed"**
A: 需要先安装 Windows Package Manager：

- Windows 11：通常已预装
- Windows 10：从 Microsoft Store 安装 "应用安装程序"

**Q: 卸载或安装失败**
A: 尝试以下解决方案：

- 以管理员身份运行脚本
- 手动关闭正在运行的惠小微应用
- 检查网络连接是否正常

**Q: 应用无法自动启动**
A: 可能原因：

- 应用尚未完全安装完成，请稍等片刻手动启动
- 应用协议未正确注册，可从开始菜单手动启动

### 错误代码说明

| 错误代码 | 说明 | 解决方法 |
|---------|------|----------|
| 1 | Winget 未安装 | 安装 Windows Package Manager |
| 2 | 卸载失败 | 检查应用是否正在运行，尝试手动关闭 |
| 3 | 安装失败 | 检查网络连接，重新运行脚本 |

## 📝 脚本配置详解

### 核心变量

```bat
AppID=9NXGP82LMGJV              # 惠小微在 Microsoft Store 的应用ID
OpenAppAfterInstall=1           # 安装后是否自动打开（1=是，0=否）
```

### 自定义修改

如需适配其他 UWP 应用，只需修改 `AppID` 变量和启动协议：

```bat
set "AppID=YOUR_APP_ID"         # 替换为目标应用的 ID
start "" "your-app-protocol:"   # 替换为目标应用的协议
```

## 🤝 贡献指南

欢迎提交 Issues 和 Pull Requests！

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情

## 👨‍💻 作者

- **hongjiapeng** - [GitHub](https://github.com/hongjiapeng)

## 🙏 致谢

- 感谢 Microsoft 提供的 Winget 包管理工具
- 感谢惠普公司开发的惠小微应用

## 📞 支持与反馈

如果您在使用过程中遇到问题或有改进建议：

- 提交 [GitHub Issues](https://github.com/hongjiapeng/ReinstallHuiXiaowei/issues)
- 发送邮件至：<hongjiapeng@hotmail.com>

---

**⭐ 如果这个项目对您有帮助，请给个 Star 支持一下！**