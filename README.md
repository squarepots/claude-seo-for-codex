# Claude SEO for Codex

An unofficial Codex adaptation of
[Claude SEO](https://github.com/AgriciDaniel/claude-seo) v2.2.4.

It packages all 25 upstream SEO Skills for Codex, exposes `$seo` as the main
entry point, uses Codex-native subagents for parallel audits, and keeps Python
and Chromium dependencies in an isolated runtime.

## Install

Add this repository as a Git marketplace, then install the plugin:

```powershell
codex plugin marketplace add squarepots/claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

Start a new Codex task after installation so the Skills are discovered.

## First use

Check the runtime:

```text
$seo doctor
```

If Codex reports that setup is required, run this once:

```text
$seo setup
```

Setup creates an isolated Python environment and installs Chromium. It does not
install global Python packages or modify Codex configuration.

## Commands

```text
$seo audit https://example.com
$seo technical https://example.com
$seo page https://example.com
$seo content https://example.com
$seo schema https://example.com
$seo geo https://example.com
```

Natural-language SEO requests can also trigger the relevant specialist Skill,
but `$seo` is the most explicit interface.

## Optional integrations

DataForSEO, Firecrawl, Ahrefs, Bing, SE Ranking, Profound, Unlighthouse, and
image generation are used only when their corresponding Codex tool or existing
credential is available. The plugin does not connect accounts or collect
credentials during installation, and missing integrations are reported rather
than replaced with guessed data.

The bundled upstream extension installers are retained for provenance and are
not part of the Codex installation flow. Do not run those Claude-specific
installers for this plugin.

## Update

```powershell
codex plugin marketplace upgrade claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

Start a new task after updating.

## Attribution and license

The SEO content and runtime are derived from
[AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo) under the
MIT License. Codex-specific packaging and adaptation are maintained by
[squarepots](https://github.com/squarepots). See [NOTICE.md](NOTICE.md) and
[LICENSE](LICENSE).
