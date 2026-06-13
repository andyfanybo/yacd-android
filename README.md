# yacd Android App

> [yacd](https://github.com/haishanh/yacd) (Yet Another Clash Dashboard) 的 Android WebView 封装版，使用 Capacitor 构建。

## ✨ 功能

- 🔌 **Clash API 管理** — 连接 Clash 内核的 RESTful API，管理代理、规则、连接
- 🌐 **完整 Web 面板** — 与 yacd 网页版功能完全一致，内置 WebView 运行
- 📱 **Android 原生体验** — 基于 Capacitor 封装，提供接近原生的使用体验
- 🔒 **支持 Secret 认证** — 可配置 Clash API 密钥，安全连接
- 🏠 **本地/远程双模式** — 支持连接本机 Clash (`127.0.0.1:9090`) 或远程 Clash 服务

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

## 🤖 云端编译

本项目使用 **GitHub Actions** 自动编译 APK，无需本地 Android 开发环境。

- **手动编译**：在 Actions 页面选择 `Build Android APK` → `Run workflow`，选择 debug/release 即可
- **自动发布**：推送 `v*` 格式的 tag 会自动编译 Release APK 并创建 GitHub Release

## 📄 License

- yacd: [MIT License](https://github.com/haishanh/yacd/blob/master/LICENSE)
- 本项目同样使用 MIT License
