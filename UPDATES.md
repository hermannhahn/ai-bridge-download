# Histórico de Atualizações - v2.0.0

Neste arquivo constam as melhorias, correções e novas funcionalidades implementadas no **AI BRIDGE**.

---


## Release - v2.0.1
* **Release CLI (PATCH):**
  - Teste de automacao de release v2.0.1 com GitHub Release e executavel anexo

---

## Release - v2.0.0
* **Migração para Go Native Windows Desktop GUI:**
  - Reescrita completa do backend em Go com suporte a compilação fechada (`.exe`).
  - Módulo `old/python-legacy/` criado contendo o código Python original para referência.
  - Interface Desktop em Wails com estilo Glassmorphism Dark UI para monitoramento em tempo real.
  - Monitoramento de status visual para 5 componentes (API, PostgreSQL pgvector, Ollama RAG, OpenWA WAHA e FastMCP Server).
  - Gerenciador de ferramentas FastMCP com switches de controle local.
  - Módulo de varredura assíncrona de rede local para dispositivos IoT (Goroutines).
  - Script Inno Setup para geração de instalador completo para Windows (`AI-Bridge-Setup-v2.0.0.exe`).
  - Skill de publicação automatizada para o repositório de lançamentos (`https://github.com/hermannhahn/ai-bridge-download.git`).
  - Suporte à criação de GitHub Releases com tag `latest` e instalador `.exe` anexo no repositório de download.

---

## Release - v1.0.2
* **Release CLI (PATCH):**
  - Release v1.0.2: ajuste de versao no inicio da publicacao

---

## Release - v1.0.1
* **Release CLI (PATCH):**
  - Release v1.0.1: infraestrutura CLI publish e hooks no repositório ai-bridge

---

## Release - v1.0.0
* **Lançamento Inicial:**
  - Projeto isolado em repositório próprio independente (`https://github.com/hermannhahn/ai-bridge.git`).
