# 🚀 MEMO Desktop - Repositório Oficial de Downloads

Bem-vindo ao repositório oficial de distribuições e instaladores do **MEMO Desktop para Windows (Go Native GUI - MEMOROUTER)**.

---

## 📥 Download da Última Versão: `v2.5.105`

- 📦 **Instalador Executável Direto**: [Baixar MEMO-Desktop-Setup-v2.5.105.exe](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/MEMO-Desktop-Setup-v2.5.105.exe)
- 📦 **Instalador de Compatibilidade (AI-Brain)**: [Baixar AI-Brain-Setup-v2.5.105.exe](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/AI-Brain-Setup-v2.5.105.exe)
- ⚡ **Instalador Automatizado Windows (Recomendado)**: [Baixar install-memo.bat](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/install-memo.bat)
- 📄 **Script PowerShell**: [Baixar install-memo.ps1](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/install-memo.ps1)
- 🔐 **Script de Certificado**: [Baixar install-cert.bat](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/install-cert.bat)
- 📄 **Certificado Digital**: [Baixar AIBrainDevCert.crt](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/AIBrainDevCert.crt)

---

## 💻 Instruções de Instalação no Windows

### Método Recomendado (1-Clique via Batch):
1. Baixe o instalador [`install-memo.bat`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/install-memo.bat).
2. Dê um duplo clique no arquivo baixado. Ele executará o PowerShell diretamente, solicitará elevação de privilégios de Administrador, registrará o certificado no Windows e iniciará a instalação do MEMO Desktop automaticamente.

---

## 💻 Instruções de Instalação e Liberação do Windows SmartScreen

### Opção 1: Execução Direta (Mais Rápida)
1. Baixe o instalador [`MEMO-Desktop-Setup-v2.5.105.exe`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/MEMO-Desktop-Setup-v2.5.105.exe).
2. Execute o instalador. Se a tela do **Windows Defender SmartScreen** aparecer:
   - Clique em **"Mais informações"** (*More info*).
   - Clique no botão **"Executar assim mesmo"** (*Run anyway*).

---

### Opção 2: Instalação do Certificado de Desenvolvimento (Remove Todos os Avisos)
Para registrar o certificado de código nas duas autoridades confiáveis do Windows (*Trusted Root* e *Trusted Publisher*):
1. Baixe os arquivos [`AIBrainDevCert.crt`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/AIBrainDevCert.crt) e [`install-cert.bat`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.105/install-cert.bat) na mesma pasta.
2. Clique com o botão direito em **`install-cert.bat`** e escolha **"Executar como Administrador"**.
3. O script importará o certificado nas duas lojas de certificados do Windows automaticamente.

---

## 📋 Histórico de Atualizações (UPDATES.md)

Para visualizar o histórico completo de notas de release, correções e novas funcionalidades, acesse:
📄 [Visualizar UPDATES.md (Histórico Completo)](UPDATES.md)

### 🌟 Notas do Release v2.5.105:
<!-- lang:en --> **Summary:** RAG notes ranking fix — capped the access-count boost (LN) that was giving the most-read note (playbook, access_count=63) an unbounded ~5x multiplier, drowning semantic similarity and making it dominate unrelated queries. Boost now saturates at ~1.7x. **Highlights:** Notes no longer dominate via pure popularity; real semantic relevance preserved.
<!-- lang:pt --> **Resumo:** Correção no ranking de notas do RAG — limitado o boost de acesso (LN) que dava à nota mais lida (playbook, access_count=63) um multiplicador ilimitado de ~5x, soterrando a similaridade semântica e fazendo a nota dominar consultas não relacionadas. Boost agora satura em ~1.7x. **Destaques:** Notas deixam de dominar por pura popularidade; relevância semântica real preservada.

---

## 🔐 Licença e Segurança

- Os executáveis deste repositório são compilações nativas de código fechado (*closed-source*) direcionadas ao Windows 10/11.
- Copyright © Hermann Hahn - Todos os direitos reservados.
