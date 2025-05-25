# etcdutil


# etcdutil
```shell
Usage:
  etcdutl [command]

Available Commands:
  completion  生成完成脚本,Generate completion script
  defrag      对 etcd 存储进行碎片整理, Defragments the storage of the etcd
  hashkv      打印给定文件的 KV 历史哈希,Prints the KV history hash of a given file
  help        Help about any command
  migrate     迁移 etcd 数据目录文件的模式，使其与不同的 etcd 版本兼容,Migrates schema of etcd data dir files to make them compatible with different etcd version
  snapshot    管理 etcd 节点快照,Manages etcd node snapshots
  version     Prints the version of etcdutl

Flags:
  -h, --help               help for etcdutl
  -w, --write-out string   设置输出格式（fields、json、protobuf、simple、table）（默认“simple”）.set the output format (fields, json, protobuf, simple, table) (default "simple")

Use "etcdutl [command] --help" 更多命令的详细信息
```
## etcdutil defrag

## etcdutil hashkv

## etcdutil snapshot

```shell
Usage:
  etcdutl snapshot [command]

Available Commands:
  restore     Restores an etcd member snapshot to an etcd directory
  status      Gets backend snapshot status of a given file

Flags:
  -h, --help   help for snapshot

Global Flags:
  -w, --write-out string   set the output format (fields, json, protobuf, simple, table) (default "simple")

Use "etcdutl snapshot [command] --help" for more information about a command.
```
- `etcdutil snapshot restore`


- `etcdutil snapshot status`

## etcdutil migrate

## etcdutil completion
```shell
Usage:
  etcdutl completion [bash|zsh|fish|powershell]

Flags:
  -h, --help   help for completion

Global Flags:
  -w, --write-out string   set the output format (fields, json, protobuf, simple, table) (default "simple")
```
使用方式:
```text
// 1.bash
# 方法1.临时生效
source <(etcdutl completion bash)
# 方法2.永久生效
etcdutl completion bash > /etc/bash_completion.d/etcdutl


// 2.Zsh
 方法一：临时生效
source <(etcdutl completion zsh)
# 方法二：永久生效
etcdutl completion zsh > "${fpath[1]}/_etcdutl"
```