# Claude SEO for Codex

[English](README.md) | [简体中文](README.zh-CN.md)

**把 Claude SEO 带到 OpenAI Codex。**

这是 [Claude SEO](https://github.com/AgriciDaniel/claude-seo) v2.2.4 的非官方 Codex 原生适配版本，打包为 Codex 插件，包含 25 个 SEO skills、用于并行审计的 Codex 原生 subagents，以及隔离的 Python / Chromium 运行环境。

> 不离开 Codex，也能直接使用成熟的 Claude SEO 工作流。

## 为什么有这个项目

Claude SEO 是一个为 Claude Code 构建的成熟 SEO 工具集。这个项目的目标不是简单复制内容，而是把它真正适配到 Codex 的插件、skills、subagents 和运行时体系里，让 Codex 用户不需要自己手工迁移 Claude 专用的安装方式和编排逻辑。

Codex 适配层包括：

- 原生 Codex plugin package；
- `$seo` 统一显式入口；
- 用 Codex 原生 subagents 并行执行审计任务；
- 跨平台运行时启动器；
- 隔离的 Python 环境和 Chromium 安装流程；
- 当可选工具或凭据不存在时，明确提示，而不是猜测或静默替代。

SEO 方法论、skills、脚本、参考资料和随附扩展内容来自上游 MIT 开源项目 Claude SEO；Codex 专用的打包与适配由本仓库维护。

## 你会得到什么

插件包含上游全部 25 个 SEO skills，覆盖包括：

- 技术 SEO 与整站审计；
- 页面级与内容质量分析；
- Schema 与结构化数据；
- GEO / AEO 工作流；
- 外链与竞品分析；
- 语义聚类与内容简报；
- 电商、本地与国际 SEO；
- Google 与第三方 SEO 数据集成。

你可以直接调用 `$seo`，也可以用自然语言让 Codex 自动触发对应的专用 skill。

## 安装

把这个仓库添加为 Codex plugin marketplace，然后安装插件：

```powershell
codex plugin marketplace add squarepots/claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

安装完成后，新开一个 Codex task，让 skills 被重新发现。

## 第一次使用

先检查运行环境：

```text
$seo doctor
```

如果提示需要初始化，再运行：

```text
$seo setup
```

Setup 会创建隔离的 Python 环境并安装 Chromium，不会向全局 Python 环境安装依赖，也不会修改你的 Codex 配置。

## 示例

```text
$seo audit https://example.com
$seo technical https://example.com
$seo page https://example.com
$seo content https://example.com
$seo schema https://example.com
$seo geo https://example.com
```

你也可以直接对 Codex 说：

```text
Audit this site for technical SEO issues and prioritize the fixes.
```

系统可以自动选择对应的 SEO skill；如果你希望显式控制工作流，`$seo` 仍然是最清晰的入口。

## 可选集成

当相应的 Codex 工具或现有凭据可用时，插件可以调用 DataForSEO、Firecrawl、Ahrefs、Bing、SE Ranking、Profound、Unlighthouse 和图像生成等集成。

安装过程中**不会**主动连接账户或收集凭据。缺失的集成会被明确报告，而不是被猜测数据替代。

仓库中保留了一部分上游扩展安装器用于来源追踪，但它们不属于 Codex 的正常安装流程。不要为这个插件运行 Claude 专用安装器。

## 更新

```powershell
codex plugin marketplace upgrade claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

更新后重新开启一个 Codex task。

## 兼容性

当前仓库基于 Claude SEO **v2.2.4**，Codex 插件版本为 **2.2.4+codex.1**。

目标是在保留上游 SEO 工作流行为的同时，使用 Codex 原生的插件、skills、subagents 和运行时约定。

## 上游与署名

这是 [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo) 的非官方社区适配版本。

- 上游 SEO 项目：**AgriciDaniel / Claude SEO**
- Codex 适配：**squarepots**
- License：**MIT**

详细署名和许可证信息见 [NOTICE.md](NOTICE.md) 与 [LICENSE](LICENSE)。

本项目与 Anthropic、OpenAI 以及上游作者均无官方隶属或背书关系。
