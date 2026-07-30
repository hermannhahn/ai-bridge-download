# Histórico de Atualizações - v2.0.0

Neste arquivo constam as melhorias, correções e novas funcionalidades implementadas no **AI BRIDGE**.

## Release - v2.0.14
* **Migração para Comunicação WebSocket Persistente (ai-bridge ↔ ai-brain):**
  - Substituição do envio de URL e detecção de IP público via POST por um canal WebSocket persistente outbound (`wss://ai-brain.ddns.net/ws/ai-bridge`).
  - Total eliminação da necessidade de abertura de portas TCP, DDNS e liberação de regras em firewalls de roteadores na máquina do usuário.
  - Refatoração do serviço `BrainSyncService` em Go (`internal/services/brain_sync.go`) utilizando `gorilla/websocket`, pings periódicos de heartbeat a cada 25 segundos e reconexão automática resiliente.
  - Interface gráfica simplificada com remoção do campo de IP/Domínio customizado e indicação de status do canal WebSocket em tempo real.
* **Configuração de Ambiente no VS Code (.vscode):**
  - Criados os arquivos de configuração [settings.json](file:///C:/Users/herma/Workspace/ai-bridge/.vscode/settings.json), [tasks.json](file:///C:/Users/herma/Workspace/ai-bridge/.vscode/tasks.json), [launch.json](file:///C:/Users/herma/Workspace/ai-bridge/.vscode/launch.json) e [extensions.json](file:///C:/Users/herma/Workspace/ai-bridge/.vscode/extensions.json) na pasta `.vscode`.
  - Integradas tarefas da CLI do projeto (`dev:test`, `dev:build`, `dev:publish`) e perfis de depuração das aplicações Go do projeto.
* **Ajuste de Identidade Visual (AI-BRIDGE) & Ícone Nativo na Barra de Título (Topbar):**
  - Alterado o título da marca no canto superior esquerdo da sidebar de `AI-BRAIN` para **`AI-BRIDGE`**.
  - Garantida a exibição do ícone nativo oficial da aplicação incorporado no executável (`icon.syso` / `icon.ico`) ao lado do título na barra de janela padrão do Windows.
* **Formatação de Versão & Branding do AI-BRAIN:**
  - Alterada a tag no canto superior esquerdo da sidebar para o padrão **VERSION vX.X.X**.
  - Corrigida a resolução dinâmica da versão do sistema via `App.GetVersion()` e `config.LoadVersionJson()`, eliminando travamento estático em versões antigas.
  - Atualizado o canto inferior direito (footer) com a logo e nome oficial do projeto parceiro **AI-BRAIN**.
* **Tela de Abertura (Splash Screen) Nativa Independente Frameless:**
  - Janela nativa flutuante sem bordas e sem barras de título (frameless 520x360), abrindo antes da aplicação principal.
  - Apresenta a logo do **AI-BRAIN** em tamanho médio com animação flutuante e o texto **BRIDGE** alinhado à direita em negrito azul neon.
  - Fundo escuro fosco transparente de alto contraste (`rgba(15, 23, 42, 0.88)` com `backdrop-filter: blur(20px)`), garantindo leitura perfeita das mensagens de carregamento mesmo sobre papéis de parede brancos ou muito claros.
  - Animação de carregamento com mensagens divertidas e tempo mínimo calibrado de acordo com o peso de cada módulo (PostgreSQL Vector, Ollama, WhatsApp, Auto-Updater, FastMCP/IoT), abrindo a janela principal (1280x800) ao finalizar.
* **Personalização do Instalador Inno Setup e Suporte Multi-Idioma (8 Idiomas):**
  - Instalador `.exe` configurado como assistente standard (`DisableDirPage=no`, `DisableProgramGroupPage=no`): solicita e sugere o diretório de instalação, permite selecionar/ocultar a pasta do Menu Iniciar e criar atalhos na Área de Trabalho.
  - Suporte completo a 8 idiomas no assistente de instalação e mensagens de desinstalação via `[CustomMessages]` (Português Brasil, Inglês, Espanhol, Francês, Alemão, Chinês Simplificado, Russo e Português Portugal).
  - Criado o launcher executável nativo Windows com o ícone oficial do AI Bridge incorporado aos recursos do binário (`cmd/installer-launcher/main.go` -> `install-ai-bridge.exe`).
  - Atualizado `install-ai-bridge.bat` / `install-cert.bat` para realizar a remoção preventiva de certificados anteriores (`certutil -delstore`), download do ícone oficial e aplicar as regras de liberação `ai-bridge-api` no Firewall do Windows para a porta 18400 da API (Inbound e Outbound).
  - Verificação periódica de atualizações executada a cada 6 horas em background no Go e na interface gráfica.
* **Correções no Gerenciamento de Versão e Auto-Updater:**
  - Corrigida versão padrão de fallback em `cmd/ai-bridge/main.go` e `index.html` de v2.3.0 para v2.3.3.
  - Ajustado o acionamento do `updater.exe` para não fechar a aplicação principal ao apenas abrir a tela de atualizações, encerrando o aplicativo e iniciando o instalador apenas quando o usuário confirmar e clicar no botão **Atualizar Agora** dentro da aplicação do atualizador.

---


## Release - v2.3.21
* **Release CLI (PATCH):**
  - Design refinado da Splash Screen: cartao escuro com efeito glassmorphism e bordas arredondadas sem fundo retangular preto

---


## Release - v2.3.20
* **Release CLI (PATCH):**
  - Ajuste na transparencia nativa da Splash: desativado WindowIsTranslucent do Wails que aplicava o efeito Mica azulado do Windows 11

---


## Release - v2.3.19
* **Release CLI (PATCH):**
  - Transparencia total da splash screen: alterado background do body para transparent no CSS global

---


## Release - v2.3.18
* **Release CLI (PATCH):**
  - Remo??o de metadados redundantes dos cards na tela Status dos Servi?os

---


## Release - v2.3.17
* **Release CLI (PATCH):**
  - Remo??o dos bot?es de a??o dos cards da tela Status dos Servi?os

---


## Release - v2.3.16
* **Release CLI (PATCH):**
  - Fix no build do dev-cli: sincronizacao automatica da pasta frontend para a pasta de embed Go garantindo inclusao do botao X e transparencia total

---


## Release - v2.3.15
* **Release CLI (PATCH):**
  - Ajuste definitivo do botao X no cabe?alho HTML e transparencia total da janela de inicializa??o

---


## Release - v2.3.14
* **Release CLI (PATCH):**
  - Ajuste do botao X de esconder aplicacao inserido no HTML do cabe?alho de acoes

---


## Release - v2.3.13
* **Release CLI (PATCH):**
  - Ajuste de transparencia total da Splash Screen (removido fundo escuro da janela Wails e do loader)

---


## Release - v2.3.12
* **Release CLI (PATCH):**
  - Ajustes de interface: botao X frameless no canto superior direito, fundo verde no feedback de salvar token e splash screen 100% transparente com auto-hide do feedback

---


## Release - v2.3.11
* **Release CLI (PATCH):**
  - Ajustes de interface: botao X frameless no canto superior direito, fundo verde no feedback de salvar token e splash screen 100% transparente com auto-hide do feedback

---


## Release - v2.3.10
* **Release CLI (PATCH):**
  - Transição da sincronização de IP público via HTTP para comunicação via WebSocket persistente outbound sem necessidade de portas públicas ou firewall.

---


## Release - v2.3.9
* **Release CLI (PATCH):**
  - feat: adicionado botao de fechar janela para bandeja e alterado publisher para AI-BRAIN Solutions

---


## Release - v2.3.8
* **Release CLI (PATCH):**
  - fix: ajustes nos cards de status dos servi?os e correcao no auto-reabrir do updater

---


## Release - v2.3.7
* **Release CLI (PATCH):**
  - fix: ajustes nos cards de status dos servi?os e correcao no auto-reabrir do updater

---


## Release - v2.3.6
* **Release CLI (PATCH):**
  - feat: nomes amigaveis dos servicos, explicacoes com analogia cerebral, i18n completo, formato de versao e logo AI-BRAIN

---


## Release - v2.3.5
* **Release CLI (PATCH):**
  - fix: corre??es na serializa??o de vers?o do updater e fallback v2.3.4

---


## Release - v2.3.4
* **Release CLI (PATCH):**
  - fix: corre??es no gerenciamento de vers?o v2.3.3 e fluxo do auto-updater

---


## Release - v2.3.3
* **Release CLI (PATCH):**
  - fix: modal customizado AI-BRIDGE, fluxo de auto-atualizacao e limpeza preventiva de certificados no Windows

---


## Release - v2.3.1
* **Release CLI (PATCH):**
  - fix: release patch v2.3.1 com ajustes de marca AI-BRIDGE e icone oficial na barra de titulo

---


## Release - v2.3.0
* **Release CLI (MINOR):**
  - feat: release minor v2.3.0 com nova tela de abertura transparente e carregamento dinamico de modulos

---


## Release - v2.2.4
* **Release CLI (PATCH):**
  - Release de corre??es com altera??o da porta padr?o da API para 18400 e adi??o de regras autom?ticas no Firewall do Windows.

---


## Release - v2.2.3
* **Release CLI (PATCH):**
  - fix: correcao do icone no tray e encerramento da aplicacao ao clicar em Sair

---


## Release - v2.2.2
* **Release CLI (PATCH):**
  - feat: adicionar suporte a dominio/hostname personalizado e ajustes na interface do AI-BRAIN

---


## Release - v2.2.1
* **Release CLI (PATCH):**
  - Adicionada opcao marcada para executar o AI Bridge ao concluir a instalacao no assistente Inno Setup.

---


## Release - v2.2.0
* **Release CLI (MINOR):**
  - Ajustes visuais na interface GUI (versao dinamica, nomes amigaveis dos servicos sem endpoints HTTP) e suporte a System Tray Icon para minimizar para a bandeja.

---


## Release - v2.1.9
* **Release CLI (PATCH):**
  - Fix: exibe apenas AI Bridge na lista de aplicativos e painel do Windows sem o numero da versao ao lado do nome

---


## Release - v2.1.8
* **Release CLI (PATCH):**
  - Fix: execucao oculta de janelas de script e finalizacao limpa do instalador sem autostart

---


## Release - v2.1.7
* **Release CLI (PATCH):**
  - Fix: Inno Setup dinamico OutputBaseFilename com versao correta para release

---


## Release - v2.1.6
* **Release CLI (PATCH):**
  - Fix: instalador Inno Setup dinamico e registro silencioso de certificados para app e setup

---


## Release - v2.1.5
* **Release CLI (PATCH):**
  - Fix: compilacao do instalador Inno Setup nativo no Windows com assistente interativo e atalhos

---


## Release - v2.1.4
* **Release CLI (PATCH):**
  - Fix: compilacao do instalador Inno Setup nativo no Windows com assistente interativo e atalhos

---


## Release - v2.1.3
* **Release CLI (PATCH):**
  - Fix: compilacao do instalador Inno Setup nativo no Windows com assistente interativo e atalhos

---


## Release - v2.1.2
* **Release CLI (PATCH):**
  - Fix: compilacao do instalador Inno Setup nativo no Windows com assistente interativo e atalhos

---


## Release - v2.1.1
* **Release CLI (PATCH):**
  - Fix: compilacao do instalador Inno Setup nativo no Windows com assistente interativo e atalhos

---


## Release - v2.1.0
* **Release CLI (MINOR):**
  - Personalização do instalador Inno Setup com wizard padrão, suporte multilíngue em 8 idiomas e launcher executável com ícone incorporado

---

## Release - v2.0.13
* **Gerenciamento de Token de Acesso ai-brain & Sincronização Dinâmica de IP Público:**
  - Aba de Configurações reestruturada para exibir exclusivamente o campo do Token de Acesso do `ai-brain` (64 caracteres) com alternância de visibilidade (mostrar/ocultar).
  - Removidos os campos legados de edição de banco de dados, porta e URLs do Ollama/WAHA, protegendo as configurações internas do sistema.
  - Criado o serviço `BrainSyncService` em Go (`internal/services/brain_sync.go`) para detecção do IP público da máquina através de múltiplos provedores redundantes.
  - Implementado envio automático via POST para `https://ai-brain.ddns.net/api/ai-bridge/update-url` com a URL `http://<IP_PUBLICO>:<PORTA>` e token do usuário.
  - Implementada Goroutine em background para detecção contínua de alterações no IP público e reenvio automático.
  - Movidos todos os arquivos residuais legados em Python e Docker (`app.py`, `Dockerfile`, `docker-compose.yml`, `init.sql`, `install.bat`, `install.sh`, `__pycache__`, `old/`) para o repositório `../old-ai-bridge`.

---


## Release - v2.0.13
* **Release CLI (PATCH):**
  - Gerenciamento de token do ai-brain, atualizacao automatica de IP publico e remocao de arquivos legacy

---

## Release - v2.0.12
* **Release CLI (PATCH):**
  - Release v2.0.12 - Adiciona a tag oficial production no go build do Wails v2 eliminando a janela de erro de stubs

---

## Release - v2.0.12
* **Correção Definitiva das Build Tags Wails v2 (`-tags production`):**
  - Adicionada a tag oficial do Wails v2 `-tags production` na compilação Go dos executáveis (`ai-bridge.exe` e `updater.exe`).
  - Corrigido o disparo do diálogo de stubs do Wails (`app_default_windows.go`), garantindo que a aplicação abra diretamente o painel desktop WebView2.

---


## Release - v2.0.11
* **Release CLI (PATCH):**
  - Release v2.0.11 - Adiciona flag -tags desktop na compilacao Go do Wails v2 para eliminar caixa de dialogo de aviso de build stubs

---

## Release - v2.0.11
* **Correção das Build Tags do Wails v2 (`-tags desktop`):**
  - Adicionada a flag `-tags desktop` na compilação Go dos executáveis (`ai-bridge.exe` e `updater.exe`).
  - Eliminado a mensagem/diálogo de aviso de stubs do Wails ao iniciar a aplicação.

---


## Release - v2.0.10
* **Release CLI (PATCH):**
  - Release v2.0.10 - User-Agent Mozilla/5.0 para downloads do GitHub e pausa de janela em caso de excecoes

---

## Release - v2.0.10
* **Prevenção de Bloqueio HTTP 403 e Tratamento de Erros:**
  - Adicionado cabeçalho `User-Agent: Mozilla/5.0` nos downloads via `System.Net.WebClient` para impedir bloqueios HTTP 403 das APIs/Releases do GitHub.
  - Adicionada pausa interativa de erro (`Read-Host` / `pause`) impedindo o fechamento imediato da janela de terminal caso ocorra qualquer exceção na rede.

---


## Release - v2.0.9
* **Release CLI (PATCH):**
  - Release v2.0.9 - Forca a atualizacao do script install-ai-bridge.ps1 em cache na pasta TEMP do usuario

---

## Release - v2.0.9
* **Atualização Forçada de Cache na Pasta TEMP:**
  - Atualização no `install-ai-bridge.bat` e `install-ai-bridge.ps1` utilizando a flag `-Force` no download para substituir imediatamente qualquer arquivo em cache legado no sistema do usuário.

---


## Release - v2.0.8
* **Release CLI (PATCH):**
  - Release v2.0.8 - Traducao dos scripts de instalacao para Ingles ASCII puro garantindo compatibilidade universal

---

## Release - v2.0.8
* **Compatibilidade Universal (Inglês ASCII):**
  - Tradução de todas as mensagens e logs de console dos scripts (`install-ai-bridge.ps1`, `install-ai-bridge.bat`, `install-cert.bat`) para Inglês.
  - Eliminação de qualquer caractere acentuado ou multibyte, garantindo 100% de compatibilidade e prevenção de erros de parser em qualquer codificação de terminal Windows (PowerShell 5.1/7.x).

---


## Release - v2.0.7
* **Release CLI (PATCH):**
  - Release v2.0.7 - Criacao do launcher install-ai-bridge.bat para execucao direta no PowerShell sem abrir no Bloco de Notas

---

## Release - v2.0.7
* **Correção de Associação no Windows (Launcher Batch):**
  - Criação do launcher `install-ai-bridge.bat` que dispara o PowerShell diretamente com `-ExecutionPolicy Bypass`.
  - Impede que o arquivo `.ps1` seja aberto no Bloco de Notas (Notepad) ao dar duplo clique no Windows Explorer.
  - Atualização do painel no `ai-brain` direcionando o download para o `install-ai-bridge.bat`.

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
  - Atualizado o painel do `ai-brain` disponibilizando um único link direto para o `install-ai-bridge.ps1`.

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
