# 🚀 AI Bridge - Repositório Oficial de Downloads

Bem-vindo ao repositório oficial de distribuições e instaladores do **AI Bridge Desktop para Windows (Go Native GUI)**.

---

## 📥 Download da Última Versão: 
- ⚡ **Instalador Automatizado Windows (Recomendado)**: [Baixar install-ai-bridge.bat](https://github.com/hermannhahn/ai-bridge-download/raw/main/install-ai-bridge.bat)
- 📄 **Script PowerShell**: [Baixar install-ai-bridge.ps1](https://github.com/hermannhahn/ai-bridge-download/raw/main/install-ai-bridge.ps1)
- 📦 **Instalador Executável Direto**: [Baixar AI-Bridge-Setup-v2.3.36.exe](https://github.com/hermannhahn/ai-bridge-download/raw/main/AI-Bridge-Setup-v2.3.36.exe)
- 🔐 **Script de Certificado**: [Baixar install-cert.bat](https://github.com/hermannhahn/ai-bridge-download/raw/main/install-cert.bat)
- 📄 **Certificado Digital**: [Baixar AIBridgeDevCert.crt](https://github.com/hermannhahn/ai-bridge-download/raw/main/AIBridgeDevCert.crt)

---

## 💻 Instruções de Instalação no Windows

### Método Recomendado (1-Clique via Batch):
1. Baixe o instalador [======================================================================
STARTING AI BRIDGE AUTOMATED INSTALLER
======================================================================

1. Downloading certificate and installer...
2. Registering digital certificate into Windows Trusted Store...
3. Launching AI Bridge Setup Wizard...](https://github.com/hermannhahn/ai-bridge-download/raw/main/install-ai-bridge.bat).
2. Dê um duplo clique no arquivo baixado. Ele executará o PowerShell diretamente, solicitará elevação de privilégios de Administrador, registrará o certificado no Windows e iniciará a instalação do AI Bridge automaticamente.

---

## 💻 Instruções de Instalação e Liberação do Windows SmartScreen

### Opção 1: Execução Direta (Mais Rápida)
1. Baixe o instalador [](https://github.com/hermannhahn/ai-bridge-download/raw/main/AI-Bridge-Setup-v2.3.36.exe).
2. Execute o instalador. Se a tela do **Windows Defender SmartScreen** aparecer:
   - Clique em **"Mais informações"** (*More info*).
   - Clique no botão **"Executar assim mesmo"** (*Run anyway*).

---

### Opção 2: Instalação do Certificado de Desenvolvimento (Remove Todos os Avisos)
Para registrar o certificado de código nas duas autoridades confiáveis do Windows (*Trusted Root* e *Trusted Publisher*):
1. Baixe os arquivos [](https://github.com/hermannhahn/ai-bridge-download/raw/main/AIBridgeDevCert.crt) e [======================================================================
AI BRIDGE DIGITAL CERTIFICATE INSTALLATION
======================================================================
Requesting Administrator privileges to register certificate...](https://github.com/hermannhahn/ai-bridge-download/raw/main/install-cert.bat) na mesma pasta.
2. Clique com o botão direito em **======================================================================
AI BRIDGE DIGITAL CERTIFICATE INSTALLATION
======================================================================
Requesting Administrator privileges to register certificate...** e escolha **"Executar como Administrador"**.
3. O script importará o certificado nas duas lojas de certificados do Windows automaticamente.

---

## 📋 Histórico de Atualizações (UPDATES.md)

Para visualizar o histórico completo de notas de release, correções e novas funcionalidades, acesse:
📄 [Visualizar UPDATES.md (Histórico Completo)](UPDATES.md)

### 🌟 Notas do Release v2.3.36:
fix(gui): oculta janelas de console ao executar docker a partir da GUI - evita prompts piscando no polling de status dos servicos

---

## 🔐 Licença e Segurança

- Os executáveis deste repositório são compilações nativas de código fechado (*closed-source*) direcionadas ao Windows 10/11.
- Copyright © Hermann Hahn - Todos os direitos reservados.
