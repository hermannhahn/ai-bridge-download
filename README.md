# 🚀 AI Bridge - Repositório Oficial de Downloads

Bem-vindo ao repositório oficial de distribuições e instaladores do **AI Bridge Desktop para Windows (Go Native GUI)**.

---

## 📥 Download da Última Versão: `v2.0.6`

- 📦 **Instalador Oficial para Windows**: [Baixar AI-Bridge-Setup-v2.0.6.exe](https://github.com/hermannhahn/ai-bridge-download/raw/main/AI-Bridge-Setup-v2.0.6.exe)
- 🔐 **Script de Confiança do Certificado**: [Baixar install-cert.bat](https://github.com/hermannhahn/ai-bridge-download/raw/main/install-cert.bat)
- 📄 **Certificado Digital**: [Baixar AIBridgeDevCert.crt](https://github.com/hermannhahn/ai-bridge-download/raw/main/AIBridgeDevCert.crt)

---

## 💻 Instruções de Instalação e Liberação do Windows SmartScreen

### Opção 1: Execução Direta (Mais Rápida)
1. Baixe o instalador [`AI-Bridge-Setup-v2.0.6.exe`](https://github.com/hermannhahn/ai-bridge-download/raw/main/AI-Bridge-Setup-v2.0.6.exe).
2. Execute o instalador. Se a tela do **Windows Defender SmartScreen** aparecer:
   - Clique em **"Mais informações"** (*More info*).
   - Clique no botão **"Executar assim mesmo"** (*Run anyway*).

---

### Opção 2: Instalação do Certificado de Desenvolvimento (Remove Todos os Avisos)
Para registrar o certificado de código nas duas autoridades confiáveis do Windows (*Trusted Root* e *Trusted Publisher*):
1. Baixe os arquivos [`AIBridgeDevCert.crt`](https://github.com/hermannhahn/ai-bridge-download/raw/main/AIBridgeDevCert.crt) e [`install-cert.bat`](https://github.com/hermannhahn/ai-bridge-download/raw/main/install-cert.bat) na mesma pasta.
2. Clique com o botão direito em **`install-cert.bat`** e escolha **"Executar como Administrador"**.
3. O script importará o certificado nas duas lojas de certificados do Windows automaticamente.

---

## 📋 Histórico de Atualizações (UPDATES.md)

Para visualizar o histórico completo de notas de release, correções e novas funcionalidades, acesse:
📄 [Visualizar UPDATES.md (Histórico Completo)](UPDATES.md)

### 🌟 Notas do Release v2.0.6:
Release v2.0.6 - Atualiza install-ai-bridge.ps1 para utilizar a pasta TEMP oficial do Windows

---

## 🔐 Licença e Segurança

- Os executáveis deste repositório são compilações nativas de código fechado (*closed-source*) direcionadas ao Windows 10/11.
- Copyright © Hermann Hahn - Todos os direitos reservados.
