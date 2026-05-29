# 磊科 N30Pro ImmortalWrt 固件编译

基于 [padavanonly/immortalwrt-mt798x-6.6](https://github.com/padavanonly/immortalwrt-mt798x-6.6) 为磊科 N30Pro 路由器定制编译的 OpenWrt 固件。

## 硬件规格

| 组件 | 型号 |
|------|------|
| CPU | MT7981B 双核 1.3GHz |
| RAM | 512MB |
| Flash | 128MB NAND |
| 交换机 | MT7531AE |
| 无线 | MT7976CN (2.4GHz + 5GHz) |
| 网口 | 1x WAN + 4x LAN |
| USB | USB 3.0 x1 |

## 内置插件

- 🔥 **OpenClash** — 代理工具
- 🏪 **iStore** — 应用商店
- 📡 **USB 上网/网络共享** — 支持 4G/5G 网卡
- 💻 **ttyd** — Web 终端
- 📁 **文件浏览器**
- ⚡ **MTK 硬件加速** (TurboACC)

## 刷机说明

> ⚠️ 需要先通过 hanwckf 的 uboot (RAX3000M NAND 版) 进入 Web 刷机界面

1. 到 [Releases](../../releases) 下载最新固件
2. 通过 uboot Web 界面上传 `*sysupgrade.itb` 文件
3. 等待重启（约 2-3 分钟）
4. 默认 IP: `192.168.1.1`，无密码

## 编译

点击 **Actions** → **编译磊科 N30Pro 固件** → **Run workflow**
