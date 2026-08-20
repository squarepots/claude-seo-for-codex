# Claude SEO for Codex

[English](README.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português (Brasil)](README.pt-BR.md)

**Leve o Claude SEO para o OpenAI Codex.**

Uma adaptação comunitária não oficial e nativa para Codex do [Claude SEO](https://github.com/AgriciDaniel/claude-seo) v2.2.4, empacotada como plugin do Codex com 25 skills de SEO, subagents nativos para auditorias em paralelo e um runtime isolado de Python / Chromium.

> Use os fluxos de trabalho comprovados do Claude SEO sem sair do Codex.

## Por que este projeto existe

Claude SEO é um toolkit de SEO maduro criado para Claude Code. Este projeto adapta essa camada de trabalho ao Codex para que usuários não precisem traduzir manualmente a instalação e a orquestração específicas do Claude.

A adaptação para Codex adiciona:

- um pacote de plugin nativo do Codex;
- `$seo` como ponto de entrada explícito;
- subagents nativos do Codex para auditorias em paralelo;
- launchers de runtime multiplataforma;
- ambiente Python isolado com instalação do Chromium;
- tratamento claro de integrações opcionais quando ferramentas ou credenciais não estão disponíveis.

A metodologia de SEO, os skills, scripts, referências e materiais de extensões incluídos vêm do projeto upstream Claude SEO, licenciado sob MIT. O empacotamento e a adaptação específicos para Codex são mantidos neste repositório.

## O que você recebe

O plugin inclui os 25 skills de SEO do projeto upstream e cobre áreas como:

- SEO técnico e auditorias de sites;
- análise on-page e qualidade de conteúdo;
- Schema e dados estruturados;
- fluxos GEO / AEO;
- backlinks e análise de concorrentes;
- agrupamento semântico e content briefs;
- SEO para ecommerce, local e internacional;
- integrações com Google e provedores externos de dados de SEO.

Você pode chamar `$seo` diretamente ou usar linguagem natural para ativar o skill especializado correspondente.

## Instalação

Adicione este repositório como marketplace de plugins do Codex e instale o plugin:

```powershell
codex plugin marketplace add squarepots/claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

Depois da instalação, inicie uma nova tarefa do Codex para que os skills sejam descobertos.

## Primeiro uso

Verifique o runtime:

```text
$seo doctor
```

Se a configuração for necessária, execute:

```text
$seo setup
```

Setup cria um ambiente Python isolado e instala o Chromium. Ele não instala pacotes Python globais nem altera a configuração do Codex.

## Exemplos

```text
$seo audit https://example.com
$seo technical https://example.com
$seo page https://example.com
$seo content https://example.com
$seo schema https://example.com
$seo geo https://example.com
```

Você também pode pedir em linguagem natural, por exemplo:

```text
Audit this site for technical SEO issues and prioritize the fixes.
```

O skill SEO relevante pode ser selecionado automaticamente, enquanto `$seo` continua sendo a interface explícita mais clara.

## Integrações opcionais

O plugin pode usar DataForSEO, Firecrawl, Ahrefs, Bing, SE Ranking, Profound, Unlighthouse e geração de imagens quando a ferramenta correspondente do Codex ou uma credencial existente estiver disponível.

Durante a instalação, ele **não** conecta contas nem coleta credenciais. Integrações indisponíveis são informadas explicitamente em vez de serem substituídas por dados inventados.

Os instaladores de extensões do projeto upstream são mantidos para preservar a procedência, mas não fazem parte do fluxo normal de instalação no Codex. Não execute os instaladores específicos do Claude para este plugin.

## Atualização

```powershell
codex plugin marketplace upgrade claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

Inicie uma nova tarefa do Codex após atualizar.

## Compatibilidade

Atualmente este repositório acompanha o Claude SEO **v2.2.4**. A versão do plugin para Codex é **2.2.4+codex.1**.

O objetivo é preservar a compatibilidade de comportamento com os fluxos de SEO upstream enquanto usa convenções nativas do Codex para packaging, orchestration e runtime.

## Upstream e atribuição

Esta é uma adaptação comunitária não oficial de [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo).

- Projeto SEO upstream: **AgriciDaniel / Claude SEO**
- Adaptação para Codex: **squarepots**
- Licença: **MIT**

Consulte [NOTICE.md](NOTICE.md) e [LICENSE](LICENSE) para detalhes de atribuição e licenciamento.

Este projeto não é afiliado nem endossado pela Anthropic, OpenAI ou pelo autor upstream.
