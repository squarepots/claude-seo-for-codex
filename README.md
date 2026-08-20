# Claude SEO for Codex

[English](README.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português (Brasil)](README.pt-BR.md)

**Bring Claude SEO to OpenAI Codex.**

An unofficial Codex-native adaptation of [Claude SEO](https://github.com/AgriciDaniel/claude-seo) v2.2.4, packaged as a Codex plugin with 25 SEO skills, native subagents for parallel audits, and an isolated Python/Chromium runtime.

> Use the proven Claude SEO workflows without leaving Codex.

## Why this exists

Claude SEO is a mature SEO toolkit built for Claude Code. This project adapts that workflow layer to Codex instead of asking Codex users to manually translate Claude-specific setup and orchestration.

The Codex adaptation adds:

- a native Codex plugin package;
- `$seo` as the explicit entry point;
- Codex-native subagents for parallel audit work;
- cross-platform runtime launchers;
- an isolated Python environment and Chromium setup;
- graceful handling of optional integrations when credentials or tools are unavailable.

The SEO methodology, skills, scripts, references, and bundled extension material come from the upstream MIT-licensed Claude SEO project. Codex-specific packaging and adaptation are maintained here.

## What you get

The plugin includes all 25 upstream SEO skills, covering areas such as:

- technical SEO and site audits;
- on-page and content quality analysis;
- schema and structured data;
- GEO / AEO workflows;
- backlinks and competitor analysis;
- semantic clustering and content briefs;
- ecommerce, local, and international SEO;
- Google and third-party SEO data integrations.

You can call `$seo` directly, or let natural-language requests trigger the relevant specialist skill.

## Install

Add this repository as a Codex plugin marketplace, then install the plugin:

```powershell
codex plugin marketplace add squarepots/claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

Start a new Codex task after installation so the skills are discovered.

## First use

Check the runtime:

```text
$seo doctor
```

If setup is required, run:

```text
$seo setup
```

Setup creates an isolated Python environment and installs Chromium. It does not install global Python packages or modify your Codex configuration.

## Examples

```text
$seo audit https://example.com
$seo technical https://example.com
$seo page https://example.com
$seo content https://example.com
$seo schema https://example.com
$seo geo https://example.com
```

You can also ask Codex naturally, for example:

```text
Audit this site for technical SEO issues and prioritize the fixes.
```

The relevant SEO skill can be selected automatically, while `$seo` remains the clearest explicit interface.

## Optional integrations

The plugin can use integrations such as DataForSEO, Firecrawl, Ahrefs, Bing, SE Ranking, Profound, Unlighthouse, and image generation when the corresponding Codex tool or an existing credential is available.

It does **not** connect accounts or collect credentials during installation. Missing integrations are reported rather than silently replaced with guessed data.

The bundled upstream extension installers are retained for provenance and are not part of the Codex installation flow. Do not run the Claude-specific installers for this plugin.

## Update

```powershell
codex plugin marketplace upgrade claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

Start a new Codex task after updating.

## Compatibility

This repository currently tracks Claude SEO **v2.2.4**. The Codex plugin version is **2.2.4+codex.1**.

The goal is behavioral compatibility with the upstream SEO workflows while using Codex-native packaging, orchestration, and runtime conventions.

## Upstream and attribution

This is an unofficial community adaptation of [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo).

- Upstream SEO project: **AgriciDaniel / Claude SEO**
- Codex adaptation: **squarepots**
- License: **MIT**

See [NOTICE.md](NOTICE.md) and [LICENSE](LICENSE) for attribution and licensing details.

This project is not affiliated with or endorsed by Anthropic, OpenAI, or the upstream author.
