# AI Bridge Desktop (Go Native Windows GUI)

**AI Bridge** é um ecossistema de alta performance de memória de longo prazo (RAG), busca semântica em vetores (`pgvector`), conector de WhatsApp (WAHA), servidor de ferramentas locais (FastMCP) e scanner de rede de dispositivos IoT, reconstruído em **Go nativo** com interface gráfica para **Windows**.

---

## 🖥️ Destaques da Versão v2.0.0 (Go Native GUI)

- **Aplicação Desktop Nativa para Windows**: Interface de alta performance estilo glassmorphism desenvolvida com Go e Wails (Microsoft Edge WebView2).
- **Código Fechado & Distribuível**: Compilado diretamente em código de máquina nativo (`.exe`), distribuído de forma fechada via instalador único.
- **Painel de Monitoramento de Serviços**: Card visual em tempo real do status de 5 componentes essenciais:
  1. **API Bridge (Go)**
  2. **PostgreSQL & pgvector** (Memória de Longo Prazo)
  3. **Ollama Engine** (RAG - Memória Dinâmica)
  4. **OpenWA / WAHA** (WhatsApp Connector & QR Code)
  5. **FastMCP Server** (Ferramentas Locais)
- **Gerenciador de Ferramentas FastMCP**: Ativação, desativação e ajuste fino de parâmetros de ferramentas locais MCP.
- **Varredura e Provedor IoT**: Módulo com Go Goroutines para identificação rápida de dispositivos IoT (ESP32, Tasmota, MQTT, Câmeras IP) na sub-rede local e provisionamento de rotas de acesso API.
- **Instalador com Dependências**: Pacote executável gerado pelo Inno Setup (`AI-Bridge-Setup-v2.0.0.exe`).

---

## 🏗️ Estrutura do Repositório

```
ai-bridge/
├── cmd/ai-bridge/          # Entry point da aplicação Go Desktop + Wails
├── internal/
│   ├── api/                # API REST em Go nativo
│   ├── config/             # Gerenciador de configurações JSON / env
│   ├── db/                 # Conector PostgreSQL + pgvector
│   ├── iot/                # Varredura concorrente de rede local IoT
│   ├── mcp/                # Servidor FastMCP e ferramentas locais
│   ├── ollama/             # RAG & Embeddings em Go
│   ├── services/           # Monitor de integridade dos 5 serviços
│   └── whatsapp/           # Gateway WhatsApp (WAHA)
├── frontend/               # Interface Web para Wails (Glassmorphism Dark UI)
├── installer/              # Script Inno Setup para compilar o Instalador Windows
├── old/python-legacy/      # Backup histórico do projeto original em Python
├── skills/deploy-release/  # Skill de automação para deploy de releases
├── version.json            # Controle central de versão (v2.0.0)
├── UPDATES.md              # Histórico de alterações e releases
└── BUGS.md                 # Rastreamento de bugs
```

---

## 📦 Instalação e Distribuição

### Para Usuários Finais (Instalador Executável)
Faça o download da versão compilada para Windows no repositório de lançamentos:
👉 [Repositório de Downloads do AI Bridge](https://github.com/hermannhahn/ai-bridge-download)

Execute o arquivo `AI-Bridge-Setup-v2.0.0.exe` para instalar a aplicação e seus serviços associados.

### Para Desenvolvedores (Compilação do Executável Fechado)
```bash
# Instalar dependências Go
go mod tidy

# Compilar aplicação Desktop fechada para Windows
wails build -clean -platform windows/amd64 -ldflags="-w -s -H windowsgui"

# Gerar o instalador Windows via Inno Setup
ISCC.exe installer/setup.iss
```

---

## 📄 Licença

Código Fechado / Proprietário - Todos os direitos reservados a Hermann Hahn.
