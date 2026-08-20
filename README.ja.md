# Claude SEO for Codex

[English](README.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português (Brasil)](README.pt-BR.md)

**Claude SEO を OpenAI Codex へ。**

[Claude SEO](https://github.com/AgriciDaniel/claude-seo) v2.2.4 を Codex 向けにネイティブ対応した非公式コミュニティ版です。25 個の SEO skill、並列監査用の Codex-native subagent、分離された Python / Chromium ランタイムを Codex プラグインとしてまとめています。

> Codex を離れずに、実績のある Claude SEO ワークフローを利用できます。

## このプロジェクトについて

Claude SEO は Claude Code 向けに構築された成熟した SEO ツールキットです。このプロジェクトでは Claude 固有のセットアップやオーケストレーションをユーザーが手作業で移植するのではなく、Codex の plugin、skills、subagents、runtime に合わせて適応しています。

Codex 向けの主な追加内容：

- Codex ネイティブの plugin package
- 明示的な入口としての `$seo`
- 並列監査に対応する Codex-native subagents
- クロスプラットフォームの runtime launcher
- 分離された Python 環境と Chromium セットアップ
- オプション連携が利用できない場合の明確なフォールバック表示

SEO の方法論、skills、scripts、references、同梱 extension は MIT ライセンスの上流 Claude SEO プロジェクトに由来します。Codex 固有の packaging と adaptation はこのリポジトリで管理しています。

## 含まれる機能

上流の 25 個すべての SEO skills を含み、以下の領域をカバーします。

- テクニカル SEO とサイト監査
- オンページ SEO とコンテンツ品質分析
- Schema / 構造化データ
- GEO / AEO ワークフロー
- 被リンクと競合分析
- セマンティッククラスタリングとコンテンツブリーフ
- EC、ローカル、国際 SEO
- Google および外部 SEO データ連携

`$seo` を直接呼び出すことも、自然言語の依頼から適切な専門 skill を起動することもできます。

## インストール

このリポジトリを Codex plugin marketplace として追加し、プラグインをインストールします。

```powershell
codex plugin marketplace add squarepots/claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

インストール後は、新しい Codex task を開始して skills を再検出してください。

## 初回利用

ランタイムを確認します。

```text
$seo doctor
```

セットアップが必要と表示された場合：

```text
$seo setup
```

Setup は分離された Python 環境を作成し Chromium をインストールします。グローバルな Python パッケージや Codex 設定は変更しません。

## 使用例

```text
$seo audit https://example.com
$seo technical https://example.com
$seo page https://example.com
$seo content https://example.com
$seo schema https://example.com
$seo geo https://example.com
```

自然言語でも利用できます。

```text
Audit this site for technical SEO issues and prioritize the fixes.
```

必要な SEO skill は自動選択できますが、`$seo` が最も明確な明示的インターフェースです。

## オプション連携

DataForSEO、Firecrawl、Ahrefs、Bing、SE Ranking、Profound、Unlighthouse、画像生成などは、対応する Codex tool または既存 credential が利用可能な場合にのみ使用します。

インストール時にアカウント接続や credential の収集は**行いません**。利用できない連携は推測データで代替せず、明示的に報告します。

上流由来の extension installer は provenance のために保持されていますが、Codex の通常インストールフローには含まれません。このプラグインで Claude 専用 installer を実行しないでください。

## 更新

```powershell
codex plugin marketplace upgrade claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

更新後は新しい Codex task を開始してください。

## 互換性

現在、このリポジトリは Claude SEO **v2.2.4** を追跡しています。Codex plugin version は **2.2.4+codex.1** です。

上流 SEO ワークフローとの動作互換性を保ちつつ、Codex ネイティブの packaging、orchestration、runtime conventions を採用することを目標としています。

## 上流プロジェクトとクレジット

これは [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo) の非公式コミュニティ適応版です。

- 上流 SEO project: **AgriciDaniel / Claude SEO**
- Codex adaptation: **squarepots**
- License: **MIT**

クレジットとライセンスの詳細は [NOTICE.md](NOTICE.md) と [LICENSE](LICENSE) を参照してください。

このプロジェクトは Anthropic、OpenAI、上流作者の公式プロジェクトではなく、承認・推薦を受けたものでもありません。
