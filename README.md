> Learn from [🐟 dorado](https://github.com/chawyehsu/dorado)
>
> Some buckets from [🍨 Scoopet 🍨](https://github.com/ivaquero/scoopet) | [scoop-lemon](https://github.com/hoilc/scoop-lemon)

## :green_book:安装 Scoop
### :blue_book:1. 设置 PowerShell 执行策略

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

### :blue_book:2. 下载 Scoop 安装脚本

```powershell
irm get.scoop.sh -outfile 'install.ps1'
```

### :blue_book:3. 使用自定义路径安装 Scoop

```powershell
.\install.ps1 -ScoopDir ['Scoop_Path'] -ScoopGlobalDir ['GlobalScoopApps_Path'] -NoProxy
```

## :green_book:推荐优先安装 App

### :blue_book:安装 sudo 直接使用管理员运行命令

```powershell
scoop install sudo
```

### :blue_book:安装 Aria2 来加速下载

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

### :blue_book:安装 Git 来添加新仓库

```powershell
scoop install git
```

## :green_book:常用命令

- 搜索

  ```powershell
  scoop search <app>
  ```

- 安装

  ```powershell
  scoop install <app> [options]
  ```

  ```powershell
  # 安装应用程序的常用方法（使用本地 bucket）:
  scoop install git
  # 安装不同版本的应用程序（请注意，这将使用当前版本自动生成清单）:
  scoop install gh@2.7.0
  # 从 URL 处的清单安装应用程序:
  scoop install https://raw.githubusercontent.com/ScoopInstaller/Main/master/bucket/runat.json
  # 从计算机上的清单安装应用程序
  scoop install \path\to\app.json
  ```

  ```
  -g, --global                    全局安装应用程序
  -i, --independent               不要自动安装依赖项
  -k, --no-cache                  不要使用下载缓存
  -u, --no-update-scoop           如果 Scoop 已经过时，请不要在安装前更新它
  -s, --skip                      跳过哈希验证（谨慎使用！）
  -a, --arch <32bit|64bit|arm64>  如果应用程序支持，请使用指定的架构
  ```

- bucket 仓库操作

  ```powershell
  # 使用命令:
  scoop bucket add [<args>]  # 添加 bucket
  scoop bucket list  # 列出已安装 bucket
  scoop bucket rm [<args>]  # 删除 bucket
  scoop bucket known  # 列出官方推荐 bucket 仓库
  
  # Buckets 是可安装的应用程序的存储库。 Scoop 附带一个默认 bucket(main)，也可以添加您或其他人已发布的 bucket。
  # 添加 extras bucket:
  scoop bucket add extras https://github.com/ScoopInstaller/Extras.git
  # 由于 Scoop 已知 'extras' 这个 bucket，因此可以将其缩短为:
  scoop bucket add extras
  ```

- 更新

  ```powershell
  scoop update <app> [options]
  
  # 将 Scoop 更新到最新版本。
  scoop update
  # 安装指定应用程序的新版本（如果有）
  scoop update <app>
  # 您可以使用以下命令来更新所有应用程序
  scoop update *
  ```

  ```
  -f, --force               即使没有新版本也强制更新
  -g, --global              更新全局安装的应用程序
  -i, --independent         不要自动安装依赖项
  -k, --no-cache            不要使用下载缓存
  -s, --skip                跳过哈希验证（谨慎使用！）
  -q, --quiet               隐藏无关消息
  -a, --all                 更新所有应用程序（替代“*”）
  ```

- 查看软件状态

  ```powershell
  scoop status

  # 仅检查本地安装的应用程序的状态，并禁用 Scoop 和 bucket 的远程获取/检查
  -l, --local
  ```

- 卸载

  ```powershell
  scoop uninstall <app> [options]

  # 卸载全局安装的应用程序
  -g, --global
  # 删除所有持久数据
  -p, --purge
  ```

- 查看软件详情

  ```powershell
  scoop info <app> [--verbose]
  ```

- 打开软件主页

  ```powershell
  scoop home <app>
  ```

- 查看软件安装清单 json

  ```powershell
  scoop cat <app>
  ```

- 其他命令

  ```powershell
  scoop cache show|rm [app(s)]  # 显示|清除下载缓存
  scoop checkup  # 检查潜在问题
  ```

