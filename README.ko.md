# Claude SEO for Codex

[English](README.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português (Brasil)](README.pt-BR.md)

**Claude SEO를 OpenAI Codex로 가져오세요.**

[Claude SEO](https://github.com/AgriciDaniel/claude-seo) v2.2.4를 Codex에 맞게 네이티브로 적용한 비공식 커뮤니티 버전입니다. 25개의 SEO skill, 병렬 감사용 Codex-native subagent, 격리된 Python / Chromium 런타임을 Codex 플러그인으로 제공합니다.

> Codex를 벗어나지 않고 검증된 Claude SEO 워크플로를 사용할 수 있습니다.

## 이 프로젝트가 필요한 이유

Claude SEO는 Claude Code용으로 만들어진 성숙한 SEO 툴킷입니다. 이 프로젝트는 사용자가 Claude 전용 설정과 오케스트레이션을 직접 옮길 필요가 없도록 해당 워크플로 계층을 Codex의 plugin, skills, subagents, runtime 방식에 맞게 적응합니다.

Codex 적용 계층에는 다음이 포함됩니다.

- Codex-native plugin package
- 명시적인 진입점 `$seo`
- 병렬 감사 작업을 위한 Codex-native subagents
- 크로스플랫폼 runtime launcher
- 격리된 Python 환경 및 Chromium 설정
- 선택적 통합이나 자격 증명이 없을 때 명확하게 상태를 보고하는 처리

SEO 방법론, skills, scripts, references 및 번들 extension 자료는 MIT 라이선스의 상위 Claude SEO 프로젝트에서 파생되었습니다. Codex 전용 packaging과 adaptation은 이 저장소에서 관리합니다.

## 제공 기능

상위 프로젝트의 25개 SEO skills를 모두 포함하며 다음 영역을 다룹니다.

- 기술 SEO 및 사이트 감사
- 온페이지 SEO와 콘텐츠 품질 분석
- Schema 및 구조화 데이터
- GEO / AEO 워크플로
- 백링크 및 경쟁사 분석
- 시맨틱 클러스터링 및 콘텐츠 브리프
- 이커머스, 로컬, 국제 SEO
- Google 및 외부 SEO 데이터 통합

`$seo`를 직접 호출하거나 자연어 요청으로 적절한 전문 skill을 실행할 수 있습니다.

## 설치

이 저장소를 Codex plugin marketplace로 추가한 뒤 플러그인을 설치합니다.

```powershell
codex plugin marketplace add squarepots/claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

설치 후 새 Codex task를 시작하면 skills가 다시 검색됩니다.

## 첫 사용

런타임 상태를 확인합니다.

```text
$seo doctor
```

설정이 필요하다고 표시되면 다음을 실행합니다.

```text
$seo setup
```

Setup은 격리된 Python 환경을 만들고 Chromium을 설치합니다. 전역 Python 패키지를 설치하거나 Codex 설정을 수정하지 않습니다.

## 예시

```text
$seo audit https://example.com
$seo technical https://example.com
$seo page https://example.com
$seo content https://example.com
$seo schema https://example.com
$seo geo https://example.com
```

자연어로도 사용할 수 있습니다.

```text
Audit this site for technical SEO issues and prioritize the fixes.
```

관련 SEO skill은 자동으로 선택될 수 있으며, `$seo`는 가장 명확한 명시적 인터페이스입니다.

## 선택적 통합

DataForSEO, Firecrawl, Ahrefs, Bing, SE Ranking, Profound, Unlighthouse 및 이미지 생성은 해당 Codex tool 또는 기존 credential이 있는 경우에만 사용할 수 있습니다.

설치 과정에서 계정을 연결하거나 credential을 수집하지 **않습니다**. 사용할 수 없는 통합은 추측한 데이터로 대체하지 않고 명확하게 보고합니다.

상위 프로젝트의 extension installer는 출처 추적을 위해 보존되어 있지만 Codex의 일반 설치 흐름에는 포함되지 않습니다. 이 플러그인에 Claude 전용 installer를 실행하지 마세요.

## 업데이트

```powershell
codex plugin marketplace upgrade claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

업데이트 후 새 Codex task를 시작하세요.

## 호환성

현재 이 저장소는 Claude SEO **v2.2.4**를 추적하며 Codex plugin version은 **2.2.4+codex.1**입니다.

상위 SEO 워크플로의 동작을 유지하면서 Codex-native packaging, orchestration 및 runtime conventions를 사용하는 것이 목표입니다.

## 상위 프로젝트 및 저작자 표시

이 프로젝트는 [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo)의 비공식 커뮤니티 적용 버전입니다.

- 상위 SEO project: **AgriciDaniel / Claude SEO**
- Codex adaptation: **squarepots**
- License: **MIT**

저작자 표시와 라이선스 세부 정보는 [NOTICE.md](NOTICE.md)와 [LICENSE](LICENSE)를 확인하세요.

이 프로젝트는 Anthropic, OpenAI 또는 상위 프로젝트 저자의 공식 프로젝트가 아니며 이들의 보증이나 승인을 받지 않았습니다.
