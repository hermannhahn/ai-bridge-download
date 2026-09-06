# 🚀 MEMO Desktop - Repositório Oficial de Downloads

Bem-vindo ao repositório oficial de distribuições e instaladores do **MEMO Desktop para Windows (Go Native GUI - MEMOROUTER)**.

---

## 📥 Download da Última Versão: `v2.5.112`

- 📦 **Instalador Executável Direto**: [Baixar MEMO-Desktop-Setup-v2.5.112.exe](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/MEMO-Desktop-Setup-v2.5.112.exe)
- 📦 **Instalador de Compatibilidade (AI-Brain)**: [Baixar AI-Brain-Setup-v2.5.112.exe](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/AI-Brain-Setup-v2.5.112.exe)
- ⚡ **Instalador Automatizado Windows (Recomendado)**: [Baixar install-memo.bat](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/install-memo.bat)
- 📄 **Script PowerShell**: [Baixar install-memo.ps1](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/install-memo.ps1)
- 🔐 **Script de Certificado**: [Baixar install-cert.bat](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/install-cert.bat)
- 📄 **Certificado Digital**: [Baixar AIBrainDevCert.crt](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/AIBrainDevCert.crt)

---

## 💻 Instruções de Instalação no Windows

### Método Recomendado (1-Clique via Batch):
1. Baixe o instalador [`install-memo.bat`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/install-memo.bat).
2. Dê um duplo clique no arquivo baixado. Ele executará o PowerShell diretamente, solicitará elevação de privilégios de Administrador, registrará o certificado no Windows e iniciará a instalação do MEMO Desktop automaticamente.

---

## 💻 Instruções de Instalação e Liberação do Windows SmartScreen

### Opção 1: Execução Direta (Mais Rápida)
1. Baixe o instalador [`MEMO-Desktop-Setup-v2.5.112.exe`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/MEMO-Desktop-Setup-v2.5.112.exe).
2. Execute o instalador. Se a tela do **Windows Defender SmartScreen** aparecer:
   - Clique em **"Mais informações"** (*More info*).
   - Clique no botão **"Executar assim mesmo"** (*Run anyway*).

---

### Opção 2: Instalação do Certificado de Desenvolvimento (Remove Todos os Avisos)
Para registrar o certificado de código nas duas autoridades confiáveis do Windows (*Trusted Root* e *Trusted Publisher*):
1. Baixe os arquivos [`AIBrainDevCert.crt`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/AIBrainDevCert.crt) e [`install-cert.bat`](https://github.com/hermannhahn/memo-desktop/releases/download/v2.5.112/install-cert.bat) na mesma pasta.
2. Clique com o botão direito em **`install-cert.bat`** e escolha **"Executar como Administrador"**.
3. O script importará o certificado nas duas lojas de certificados do Windows automaticamente.

---

## 📋 Histórico de Atualizações (UPDATES.md)

Para visualizar o histórico completo de notas de release, correções e novas funcionalidades, acesse:
📄 [Visualizar UPDATES.md (Histórico Completo)](UPDATES.md)

### 🌟 Notas do Release v2.5.112:
<!-- lang:en -->
**Summary:** This update fixes a critical bug where the AI memory system was failing to recall long-term memories (such as people's names and past events) during conversations, even when over 70 relevant records existed. The command execution tool also no longer opens visible windows on your desktop.

**Highlights:**
- Long-term memories are now correctly recalled during conversations - names, events and past context work as expected
- Memory ranking now properly boosts consolidated and merged memories, giving them priority in context injection
- The MCP command tool (cmd/powershell) no longer opens a visible console window when the agent runs commands
- The search_long_term_memories tool now uses the same vector search pipeline as the automatic RAG

<!-- lang:pt -->
**Resumo:** Esta atualizacao corrige um bug critico onde o sistema de memoria nao resgatava lembrancas de longo prazo (como nomes de pessoas e eventos passados) durante conversas, mesmo com mais de 70 registros relevantes. A ferramenta de execucao de comandos tambem nao abre mais janelas visiveis no seu desktop.

**Destaques:**
- Memorias de longo prazo agora sao corretamente resgatadas durante conversas - nomes, eventos e contexto passado funcionam como esperado
- O ranking de memoria agora prioriza corretamente memorias consolidadas e fundidas (merged), dando-lhes prioridade na injecao de contexto
- A ferramenta MCP de comandos (cmd/powershell) nao abre mais janela de console visivel quando o agente executa comandos
- A ferramenta search_long_term_memories agora usa o mesmo pipeline de busca vetorial que o RAG automatico

---

## 🔐 Licença e Segurança

- Os executáveis deste repositório são compilações nativas de código fechado (*closed-source*) direcionadas ao Windows 10/11.
- Copyright © Hermann Hahn - Todos os direitos reservados.
