import type { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'me.haishan.yacd',
  appName: 'yacd',
  webDir: 'www',
  server: {
    // 允许访问任意 HTTP/HTTPS 后端（Clash API）
    cleartext: true,
    // 允许跨域请求
    allowNavigation: ['*'],
  },
  android: {
    allowMixedContent: true,
    // WebView 设置
    webContentsDebuggingEnabled: false,
  },
};

export default config;
