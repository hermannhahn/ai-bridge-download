# 🚀 MEMO Desktop - Repositório Oficial de Downloads

Bem-vindo ao repositório oficial de distribuições e instaladores do **MEMO Desktop para Windows (Go Native GUI - MEMOROUTER)**.

---

## 📥 Download da Última Versão: `v2.5.108`

- 📦 **Instalador Executável Direto**: [Baixar MEMO-Desktop-Setup-v2.5.108.exe](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/MEMO-Desktop-Setup-v2.5.108.exe)
- 📦 **Instalador de Compatibilidade (AI-Brain)**: [Baixar AI-Brain-Setup-v2.5.108.exe](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/AI-Brain-Setup-v2.5.108.exe)
- ⚡ **Instalador Automatizado Windows (Recomendado)**: [Baixar install-memo.bat](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/install-memo.bat)
- 📄 **Script PowerShell**: [Baixar install-memo.ps1](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/install-memo.ps1)
- 🔐 **Script de Certificado**: [Baixar install-cert.bat](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/install-cert.bat)
- 📄 **Certificado Digital**: [Baixar AIBrainDevCert.crt](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/AIBrainDevCert.crt)

---

## 💻 Instruções de Instalação no Windows

### Método Recomendado (1-Clique via Batch):
1. Baixe o instalador [`install-memo.bat`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/install-memo.bat).
2. Dê um duplo clique no arquivo baixado. Ele executará o PowerShell diretamente, solicitará elevação de privilégios de Administrador, registrará o certificado no Windows e iniciará a instalação do MEMO Desktop automaticamente.

---

## 💻 Instruções de Instalação e Liberação do Windows SmartScreen

### Opção 1: Execução Direta (Mais Rápida)
1. Baixe o instalador [`MEMO-Desktop-Setup-v2.5.108.exe`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/MEMO-Desktop-Setup-v2.5.108.exe).
2. Execute o instalador. Se a tela do **Windows Defender SmartScreen** aparecer:
   - Clique em **"Mais informações"** (*More info*).
   - Clique no botão **"Executar assim mesmo"** (*Run anyway*).

---

### Opção 2: Instalação do Certificado de Desenvolvimento (Remove Todos os Avisos)
Para registrar o certificado de código nas duas autoridades confiáveis do Windows (*Trusted Root* e *Trusted Publisher*):
1. Baixe os arquivos [`AIBrainDevCert.crt`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/AIBrainDevCert.crt) e [`install-cert.bat`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.108/install-cert.bat) na mesma pasta.
2. Clique com o botão direito em **`install-cert.bat`** e escolha **"Executar como Administrador"**.
3. O script importará o certificado nas duas lojas de certificados do Windows automaticamente.

---

## 📋 Histórico de Atualizações (UPDATES.md)

Para visualizar o histórico completo de notas de release, correções e novas funcionalidades, acesse:
📄 [Visualizar UPDATES.md (Histórico Completo)](UPDATES.md)

### 🌟 Notas do Release v2.5.108:
<!-- lang:en -->
**Summary:** Fixes a critical RAG memory ranking and retrieval bug, implements Portuguese stop-words filtering for search, introduces a calibrated memory decay lifecycle based on importance, and enables automated permanent physical deletion (hard delete) for operational tool call noise.

**Highlights:**
- Fixed critical parameter order mismatch in SQL ranking formula that heavily penalized memories older than 4 days.
- Added Portuguese and English stop-words filtering to prevent common connective words from polluting the RAG limits.
- Established a memory decay lifecycle for merged memories (90 days for casual interactions up to 2 years for critical decisions).
- Implemented automated physical hard delete during nightly consolidation for purged tool execution noise and eliminated memories.

<!-- lang:pt -->
**Resumo:** Corrige uma falha crítica na fórmula de ranking e recuperação de memórias do RAG, adiciona filtro de stop-words em português, estabelece o ciclo de vida e decaimento calibrado por importância para memórias consolidadas e ativa a exclusão física definitiva (hard delete) para ruídos operacionais de ferramentas.

**Destaques:**
- Corrigida a inversão de parâmetros na fórmula SQL de ranking que descartava indevidamente memórias com mais de 4 dias.
- Adicionado filtro de palavras de parada (stop-words) em português e inglês para evitar que conectivos encham o limite de recuperação do RAG.
- Implementado ciclo de vida calibrado por importância para memórias unificadas (de 90 dias para saudações casuais até 2 anos para decisões críticas).
- Ativada a purga física definitiva (hard delete) no banco de dados durante a consolidação noturna para ruídos de ferramentas e registros eliminados.

---

## 🔐 Licença e Segurança

- Os executáveis deste repositório são compilações nativas de código fechado (*closed-source*) direcionadas ao Windows 10/11.
- Copyright © Hermann Hahn - Todos os direitos reservados.
