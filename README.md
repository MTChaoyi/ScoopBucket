> Learn from [🐟 dorado](https://github.com/chawyehsu/dorado)
>
> Some buckets from [🍨 Scoopet 🍨](https://github.com/ivaquero/scoopet) | [scoop-lemon](https://github.com/hoilc/scoop-lemon)

## 安装 Scoop
### 1. 设置 PowerShell 执行策略

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

### 2. 下载 Scoop 安装脚本

```powershell
irm get.scoop.sh -outfile 'install.ps1'
```

### 3. 使用自定义路径安装 Scoop

```powershell
.\install.ps1 -ScoopDir ['Scoop_Path'] -ScoopGlobalDir ['GlobalScoopApps_Path'] -NoProxy
```

## 推荐优先安装 App

### 安装 sudo 直接使用管理员运行命令

```powershell
scoop install sudo
```

### 安装 Aria2 来加速下载

```powershell
scoop install aria2
```
- 如果使用 VPN，需要通过如下命令关闭 aria2

    ```powershell
    scoop config aria2-enabled false
    ```

- Aria2 的参数自定义

    ```powershell
    # aria2 在 Scoop 中默认开启
    scoop config aria2-enabled true
    # 关于以下参数的作用，详见 aria2 的相关资料
    scoop config aria2-retry-wait 4  # 重试等待秒数
    scoop config aria2-split 16  # 单任务最大连接数
    scoop config aria2-max-connection-per-server 16  # 单服务器最大连接数
    scoop config aria2-min-split-size 4M  # 最小文件分片大小
    ```

### 安装 Git 来添加新仓库

```powershell
scoop install git
```



## 常用命令



