# Histórico de Atualizações - v2.0.0

Neste arquivo constam as melhorias, correções e novas funcionalidades implementadas no **AI BRIDGE**.

---


## Release - v2.0.6
* **Release CLI (PATCH):**
  - Release v2.0.6 - Atualiza install-ai-bridge.ps1 para utilizar a pasta TEMP oficial do Windows

---

## Release - v2.0.6
* **Pasta Temporária do Windows (TEMP):**
  - Atualização no `install-ai-bridge.ps1` para armazenar os arquivos temporários no caminho oficial TEMP do Windows (`[System.IO.Path]::GetTempPath()`).
  - `AIBridgeDevCert.crt`, `install-cert.bat` e `AI-Bridge-Setup.exe` são baixados e executados em `%TEMP%\AIBridgeInstaller`.

---


## Release - v2.0.5
* **Release CLI (PATCH):**
  - Release v2.0.5 - Script automatizado install-ai-bridge.ps1 para download, confianca de certificado e execucao do instalador

---

## Release - v2.0.5
* **Instalação Automatizada (PowerShell):**
  - Criação do script `install-ai-bridge.ps1` para download automático do instalador, certificado e batch de instalação.
  - Execução com elevação de permissões de Administrador, importação dos certificados em Root e TrustedPublisher, e disparo do instalador oficial.
  - Atualizado o painel do `ai-device-server` disponibilizando um único link direto para o `install-ai-bridge.ps1`.

---


## Release - v2.0.4
* **Release CLI (PATCH):**
  - Release v2.0.4 - Script de automacao install-cert.bat para instalacao do certificado em Root e TrustedPublisher e liberacao do Windows SmartScreen

---


## Release - v2.0.3
* **Release CLI (PATCH):**
  - Release v2.0.3 - Interface Grafica Wails v2 no app principal e atualizador, correcao de terminal em background e icones oficiais nos executaveis e instalador

---

## Release - v2.0.3
* **Correções e Interface Gráfica (GUI):**
  - Implementação da interface Wails v2 no aplicativo principal (`ai-bridge.exe`) impedindo abertura de janela de terminal.
  - Desenvolvimento de interface gráfica interativa para o auto-atualizador (`updater.exe`) com barra de progresso e estatísticas de versão.
  - Adicionadas flags `-ldflags="-w -s -H windowsgui"` em todas as compilações para Windows em `cli/cli.js`.
  - Incorporação do ícone oficial da logo do AI Bridge (`neuraltools.png`) nos recursos nativos do Windows (`.syso`) para `ai-bridge.exe` e `updater.exe`.
  - Validação do Inno Setup Installer (`setup.iss`) com ícone personalizado (`SetupIconFile`) para garantia de assistente gráfico de instalação.

---


## Release - v2.0.2
* **Release CLI (PATCH):**
  - Release v2.0.2 - Incluindo certificado digital AIBridgeDevCert.crt nos assets de download da release

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
  - Automação de geração de certificado digital autoassinado em `certs/` e assinatura automática de executáveis `.exe` via `./dev-cli build` e `./dev-cli cert:generate`.

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
