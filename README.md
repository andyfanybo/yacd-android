# yacd Android App

> 🤖 使用 **GitHub Actions** 云端编译 [yacd](https://github.com/haishanh/yacd) (Yet Another Clash Dashboard) 为 Android APK，**无需本地编译环境**！

## 🚀 快速开始

### 步骤 1：Fork 或创建仓库

1. 点击 GitHub 右上角 **"+"** → **"Import repository"**
2. 填入本仓库地址，或直接创建新仓库并上传这些文件
3. 将代码推送到 GitHub

### 步骤 2：触发云端编译

1. 在 GitHub 仓库页面点击 **Actions** 标签
2. 左侧选择 **"Build Android APK"**
3. 点击右侧 **"Run workflow"** 下拉按钮
4. 选择参数：
   - `yacd_version`: yacd 分支（默认 master）
   - `build_type`: `debug`（推荐）或 `release`
5. 点击绿色 **"Run workflow"** 按钮

### 步骤 3：下载 APK

1. 等待编译完成（约 10-15 分钟）
2. 进入编译完成的 workflow run 页面
3. 在 **Artifacts** 区域下载 `yacd-android-*.apk`
4. 安装到 Android 设备即可使用

## 📱 使用说明

安装 APK 后打开 yacd：

1. 输入你的 Clash API 地址（默认 `http://127.0.0.1:9090`）
2. 如果设置了 secret，填入对应的密钥
3. 即可管理 Clash 代理、规则、连接等

> ⚠️ **注意**：如果 Clash 运行在本地（127.0.0.1），确保 Android 设备上 Clash 已启动并监听对应端口。

## 🔧 技术架构

```
yacd 源码 (React + Vite)
        ↓  pnpm build
   静态文件 (www/)
        ↓  Capacitor
   Android WebView 容器
        ↓  Gradle (GitHub Actions)
      APK 安装包
```

## 📋 定时编译

项目配置了**每周日自动编译**最新的 yacd master 分支，确保 APK 保持最新。

## 🔑 Release 签名 (可选)

如需发布签名版 APK 到应用商店：

1. 生成 keystore 文件
2. 在 GitHub 仓库 Settings → Secrets and variables → Actions 中添加：
   - `KEYSTORE_BASE64`: keystore 文件的 base64 编码
   - `KEYSTORE_PASSWORD`: keystore 密码
   - `KEY_ALIAS`: 密钥别名
   - `KEY_PASSWORD`: 密钥密码

## 📄 License

- yacd: [MIT License](https://github.com/haishanh/yacd/blob/master/LICENSE)
- 本项目同样使用 MIT License
