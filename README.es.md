# Claude SEO for Codex

[English](README.md) | [简体中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português (Brasil)](README.pt-BR.md)

**Lleva Claude SEO a OpenAI Codex.**

Una adaptación comunitaria no oficial y nativa para Codex de [Claude SEO](https://github.com/AgriciDaniel/claude-seo) v2.2.4, empaquetada como plugin de Codex con 25 skills de SEO, subagents nativos para auditorías en paralelo y un runtime aislado de Python / Chromium.

> Usa los flujos de trabajo probados de Claude SEO sin salir de Codex.

## Por qué existe este proyecto

Claude SEO es un toolkit de SEO maduro creado para Claude Code. Este proyecto adapta esa capa de trabajo a Codex para que los usuarios no tengan que traducir manualmente la instalación y la orquestación específicas de Claude.

La adaptación para Codex añade:

- un paquete de plugin nativo de Codex;
- `$seo` como punto de entrada explícito;
- subagents nativos de Codex para auditorías en paralelo;
- launchers de runtime multiplataforma;
- un entorno Python aislado con instalación de Chromium;
- manejo claro de integraciones opcionales cuando faltan herramientas o credenciales.

La metodología SEO, los skills, scripts, referencias y material de extensiones incluidos provienen del proyecto upstream Claude SEO, publicado bajo licencia MIT. El empaquetado y la adaptación específicos para Codex se mantienen en este repositorio.

## Qué incluye

El plugin contiene los 25 skills de SEO del proyecto upstream y cubre áreas como:

- SEO técnico y auditorías de sitios;
- análisis on-page y calidad de contenido;
- Schema y datos estructurados;
- flujos GEO / AEO;
- backlinks y análisis competitivo;
- clustering semántico y content briefs;
- SEO para ecommerce, local e internacional;
- integraciones con Google y proveedores externos de datos SEO.

Puedes invocar `$seo` directamente o usar lenguaje natural para activar el skill especializado correspondiente.

## Instalación

Añade este repositorio como marketplace de plugins de Codex e instala el plugin:

```powershell
codex plugin marketplace add squarepots/claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

Después de instalarlo, inicia una nueva tarea de Codex para que se descubran los skills.

## Primer uso

Comprueba el runtime:

```text
$seo doctor
```

Si se requiere configuración, ejecuta:

```text
$seo setup
```

Setup crea un entorno Python aislado e instala Chromium. No instala paquetes globales de Python ni modifica la configuración de Codex.

## Ejemplos

```text
$seo audit https://example.com
$seo technical https://example.com
$seo page https://example.com
$seo content https://example.com
$seo schema https://example.com
$seo geo https://example.com
```

También puedes pedirlo en lenguaje natural, por ejemplo:

```text
Audit this site for technical SEO issues and prioritize the fixes.
```

Codex puede seleccionar automáticamente el skill SEO adecuado, mientras que `$seo` sigue siendo la interfaz explícita más clara.

## Integraciones opcionales

El plugin puede usar DataForSEO, Firecrawl, Ahrefs, Bing, SE Ranking, Profound, Unlighthouse y generación de imágenes cuando la herramienta de Codex correspondiente o una credencial existente esté disponible.

Durante la instalación **no** conecta cuentas ni recopila credenciales. Las integraciones no disponibles se informan de forma explícita en lugar de sustituirse por datos inventados.

Los instaladores de extensiones del proyecto upstream se conservan por trazabilidad, pero no forman parte del flujo normal de instalación en Codex. No ejecutes los instaladores específicos de Claude para este plugin.

## Actualización

```powershell
codex plugin marketplace upgrade claude-seo-for-codex
codex plugin add claude-seo-for-codex@claude-seo-for-codex
```

Inicia una nueva tarea de Codex después de actualizar.

## Compatibilidad

Actualmente este repositorio sigue Claude SEO **v2.2.4**. La versión del plugin para Codex es **2.2.4+codex.1**.

El objetivo es mantener compatibilidad de comportamiento con los flujos SEO upstream usando convenciones nativas de Codex para packaging, orchestration y runtime.

## Upstream y atribución

Esta es una adaptación comunitaria no oficial de [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo).

- Proyecto SEO upstream: **AgriciDaniel / Claude SEO**
- Adaptación para Codex: **squarepots**
- Licencia: **MIT**

Consulta [NOTICE.md](NOTICE.md) y [LICENSE](LICENSE) para los detalles de atribución y licencia.

Este proyecto no está afiliado ni respaldado por Anthropic, OpenAI o el autor upstream.
