# Histórico de Atualizações - v2.3.53

---


## Release - v2.5.108
### 📣 Apresentação da Atualização

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

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.108 (`8b0ce88`)
- updates in fix/rag-candidate-filter-and-occurrences (`528736c`)


---


## Release - v2.5.107
### 📣 Apresentação da Atualização

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

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.107 (`32d4957`)

#### 🐛 Correções
- incluir memorias merged no RAG e proteger matches textuais contra cortes (`9bd51f6`)
- excluir memorias ativas de ferramentas operacionais do RAG Auto-Hit Rate (`baae205`)


---


## Release - v2.5.106
### 📣 Apresentação da Atualização

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

### 📋 Changelog da Versão

**Total:** 7 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.106 (`e1512a1`)
- update development branch (`8b1abb0`)
- implementa decaimento calibrado por importancia e purga fisica de memórias (`282a3b9`)

#### 🐛 Correções
- remove duplicate key nos in stopWordsPTBR map literal (`a87cab0`)
- corrige bug critico de argumentos trocados no ranking RAG e stop-words ILIKE (`822bd16`)

#### 📚 Documentação
- registra correcao do bug RAG BUG-023 no BUGS.md e TODO.md (`7a23b04`)
- registrar fix v2.5.105 do cap do access-count boost nas notas RAG (`cfe5a6b`)


---


## Release - v2.5.105
### 📣 Apresentação da Atualização

<!-- lang:en --> **Summary:** RAG notes ranking fix — capped the access-count boost (LN) that was giving the most-read note (playbook, access_count=63) an unbounded ~5x multiplier, drowning semantic similarity and making it dominate unrelated queries. Boost now saturates at ~1.7x. **Highlights:** Notes no longer dominate via pure popularity; real semantic relevance preserved.
<!-- lang:pt --> **Resumo:** Correção no ranking de notas do RAG — limitado o boost de acesso (LN) que dava à nota mais lida (playbook, access_count=63) um multiplicador ilimitado de ~5x, soterrando a similaridade semântica e fazendo a nota dominar consultas não relacionadas. Boost agora satura em ~1.7x. **Destaques:** Notas deixam de dominar por pura popularidade; relevância semântica real preservada.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.105 (`b8f42d6`)


---


## Release - v2.5.104
### 📣 Apresentação da Atualização

<!-- lang:en --> **Summary:** RAG notes ranking fix — capped the access-count boost (LN) that was giving the most-read note (playbook, access_count=63) an unbounded ~5x multiplier, drowning semantic similarity and making it dominate unrelated queries. Boost now saturates at ~1.7x. **Highlights:** Notes no longer dominate via pure popularity; real semantic relevance preserved.
<!-- lang:pt --> **Resumo:** Correção no ranking de notas do RAG — limitado o boost de acesso (LN) que dava à nota mais lida (playbook, access_count=63) um multiplicador ilimitado de ~5x, soterrando a similaridade semântica e fazendo a nota dominar consultas não relacionadas. Boost agora satura em ~1.7x. **Destaques:** Notas deixam de dominar por pura popularidade; relevância semântica real preservada.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.104 (`6311f45`)

#### 🐛 Correções
- cap access-count boost em notas para quebrar ciclo de dominância (playbook ID 97) (`3d1943a`)


---


## Release - v2.5.103
### 📣 Apresentação da Atualização

<!-- lang:en --> **Summary:** RAG ranking calibration with refined similarity thresholds (chat 0.30, notes 0.40), consolidated boost 2.0, and MCP tool calls filtered from the RAG prompt injection.
<!-- lang:pt --> **Resumo:** Calibracao do ranking RAG com thresholds de similaridade refinados (chat 0.30, notas 0.40), boost de consolidadas 2.0 e filtro de tool calls MCP no prompt RAG.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.103 (`a9e48d5`)
- calibra thresholds de similaridade (chat 0.30, notas 0.40), boost de consolidadas 2.0 e filtra tool calls MCP do prompt RAG (`a2ae566`)
- update development branch (`e6a45e2`)


---


## Release - v2.5.102
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Transferred memory classification to long-term memory sessions and updated consolidation and RAG logic.

**Highlights:**
- Moved memory type attribute (procedural, episodic, semantic) from notes to long-term memory sessions
- Integrated memory classification into realtime and nightly consolidation pipelines with RAG vector search updates
- Updated desktop user interface with memory type filters on the Memories tab

<!-- lang:pt -->
**Resumo:** Transferencia da classificacao de memoria para as sessoes de memoria de longo prazo e atualizacao da consolidacao e do RAG.

**Destaques:**
- Migracao do atributo de tipo de memoria (procedural, episodica, semantica) das anotacoes para as sessoes de memoria
- Integracao da classificacao de memoria nos pipelines de consolidacao em tempo real e noturna com busca vetorial RAG atualizada
- Atualizacao da interface desktop com filtros de tipo de memoria na aba de Memorias

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.102 (`b37c575`)
- move memory_type from notes to sessions table and adapt RAG and consolidation logic (`0a6317f`)
- update development branch (`b542b46`)


---


## Release - v2.5.101
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Automated real-time Dashboard refresh and true full system backup including PostgreSQL memory database.

**Highlights:**
- Memory dashboard now auto-updates seamlessly every 3 seconds without manual controls.
- Full Backup now exports and includes complete PostgreSQL database dump with all long-term memories and notes.
- Full Restore automatically restores both configuration files and the memory database.

<!-- lang:pt -->
**Resumo:** Atualiza??o autom?tica em tempo real do Dashboard e backup completo incluindo o banco de dados PostgreSQL de mem?rias.

**Destaques:**
- Dashboard de mem?rias agora atualiza automaticamente a cada 3 segundos sem controles manuais.
- O Full Backup agora exporta e inclui o dump completo do banco PostgreSQL com todas as mem?rias e anota??es.
- O Full Restore restaura automaticamente tanto os arquivos de configura??o quanto o banco de dados de mem?rias.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.101 (`ecaa012`)
- update development branch (`28f740f`)


---


## Release - v2.5.100
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed updater window launch from the header update button.

**Highlights:**
- Restored proper GUI process attributes when launching the auto-updater module from the application header
- Enabled explicit window centering and display on updater launch to prevent hidden window execution

<!-- lang:pt -->
**Resumo:** Correcao na abertura da janela do atualizador ao clicar no botao da header.

**Destaques:**
- Ajustados os atributos de criacao de processo GUI ao disparar o modulo auto-updater pela barra superior
- Garantida a exibicao e centralizacao explicita da janela do atualizador para evitar execucao oculta

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.100 (`f65c8a3`)
- update development branch (`2c0ceac`)


---


## Release - v2.5.99
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Eliminated startup console window flash and resolved initial splash screen delay.

**Highlights:**
- Instant splash screen appearance by making database ping and cache cleanup non-blocking
- Suppressed all console/CMD windows during background legacy container stop and timezone discovery
- Optimized AppData directory resolution to avoid synchronous disk walks on launch

<!-- lang:pt -->
**Resumo:** Eliminado piscar de janela de prompt no boot e resolvida lentidao para exibicao da splash screen.

**Destaques:**
- Abertura instantanea da tela de splash tornando o ping do banco e limpeza de cache nao-bloqueantes
- Ocultacao total de janelas de prompt durante checagem de containers legados e fuso horario
- Otimizacao no carregamento do diretorio AppData eliminando varreduras sincronas de disco no boot

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.99 (`e2f434b`)
- update development branch (`fef250f`)


---


## Release - v2.5.98
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed Knowledge Base modal text rendering issue for formatted tags.

**Highlights:**
- Corrected i18n system to render rich HTML formatting in modal descriptions
- Formatted file extensions and permission tags now display cleanly without raw code markup

<!-- lang:pt -->
**Resumo:** Correcao na formatacao de texto do modal de Base de Conhecimento.

**Destaques:**
- Ajustado o sistema i18n para renderizar tags HTML formatadas nas descricoes do modal
- Extensoes de arquivo e permissoes agora sao exibidas perfeitamente formatadas sem codigo visivel

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.98 (`b297b3a`)
- update development branch (`9ab6321`)


---


## Release - v2.5.97
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Enforced installation directly into the MEMO folder and removed all legacy binary packagings.

**Highlights:**
- Installer and updater now strictly install to and execute from 'C:\Program Files (x86)\MEMO'
- Exclusively builds and packages 'memo.exe' and 'updater.exe', removing all legacy aliases
- Automatically cleans up legacy files and shortcuts from previous installations

<!-- lang:pt -->
**Resumo:** Instalacao direta na pasta MEMO e remocao completa de empacotamento de binarios legados.

**Destaques:**
- Instalador e atualizador agora instalam e executam estritamente a partir de 'C:\Program Files (x86)\MEMO'
- Compila e empacota exclusivamente 'memo.exe' e 'updater.exe', eliminando nomes e copias legadas
- Limpeza automatica de arquivos e atalhos antigos de instalacoes anteriores

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.97 (`70a71e4`)
- update development branch (`9c92620`)


---


## Release - v2.5.96
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed updater console flashes, animated step progress bar, and ensured legacy shortcuts launch the latest MEMO Desktop build.

**Highlights:**
- Completely suppressed CMD console window flashes during update launch, execution, and app reopening
- Dynamic step-by-step progress bar tracking installer download, file extraction, and Docker container recreation
- Fixed splash screen initialization and ensured all legacy executable shortcuts run the latest application version

<!-- lang:pt -->
**Resumo:** Correcao de janelas de prompt no atualizador, barra de progresso dinamica e garantia de execucao da versao mais recente em todos os atalhos.

**Destaques:**
- Eliminado qualquer piscar de janelas CMD no acionamento do atualizador, durante a instalacao e na reabertura do app
- Barra de progresso dinamica acompanhando o download do instalador, extracao de binarios e recriacao dos containers Docker
- Correcao na inicializacao da tela de splash e sincronizacao de todos os executaveis legados para rodar a versao mais recente

### 📋 Changelog da Versão

**Total:** 6 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.96 (`963e25f`)
- update development branch (`f924004`)
- updates in fix/updater-cmd-flashes-and-splash-freeze (`5bf7493`)
- updates in development (`2e200ce`)

#### 🐛 Correções
- package ai-bridge.exe legacy fallback to ensure old shortcuts run latest build (`a514a8d`)
- suppress console flashes, animate progress bar, and fix splash screen freeze (`3fa2617`)


---


## Release - v2.5.95
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added Knowledge Base MCP tool with text editing and PDF reading, new dashboard counter and guide modal, plus UI visual improvements.

**Highlights:**
- Unified Knowledge Base MCP tool allowing agents to create, edit, search and list text files and read PDF documents from the user folder
- Knowledge Base button on Dashboard with dynamic file counter and quick access modal with Explorer launcher
- Cleaned up legacy service action buttons and aligned square badge and tracking borders
- Fixed settings accordion layout eliminating unwanted scrollbar

<!-- lang:pt -->
**Resumo:** Adicionada ferramenta MCP de Base de Conhecimento com suporte a edicao de textos e leitura de PDFs, novo botao com contador na dashboard e modal explicativo, alem de melhorias visuais na interface.

**Destaques:**
- Ferramenta MCP unificada de Base de Conhecimento permitindo criacao, edicao, busca e listagem de textos e leitura de documentos PDF na pasta do usuario
- Botao de Base de Conhecimento na Dashboard com contador dinamico de arquivos e modal de acesso rapido com abertura no Explorer
- Remocao de botoes legados de servicos e padronizacao de bordas quadradas no status do sistema e mapa de rastreamento
- Correcao estrutural dos accordions em Configuracoes eliminando barra de rolagem desnecessaria

### 📋 Changelog da Versão

**Total:** 7 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.95 (`079fc3b`)
- update development branch (`f0c825d`)
- updates in fix/ui-cleanup-and-settings (`4a0e782`)
- implement knowledge base mcp tool and dashboard integration (`64c0cb3`)
- updates in development (`984af6a`)

#### 🔧 Manutenção / Refatoração
- remove release_msg.txt (`d0b7337`)

#### 🐛 Correções
- remove legacy service buttons, square borders, clean settings accordion and update settings title (`6d1854d`)


---


## Release - v2.5.94
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added support for custom historical timestamps when recording chat messages in PostgreSQL LTM.

**Highlights:**
- Support custom timestamp/created_at field in add_chat_message WebSocket action and HTTP API
- Enable replay of queued offline interactions with preserved original timestamps in LTM
- Automatically delegate CLI build/publish to Dev API when executed from WSL

<!-- lang:pt -->
**Resumo:** Adicionado suporte a timestamps historicos personalizados na gravacao de mensagens de chat no LTM do PostgreSQL.

**Destaques:**
- Suporte a campo timestamp/created_at customizado na acao WebSocket add_chat_message e na API HTTP
- Viabiliza reenvio de interacoes enfileiradas offline preservando os timestamps originais no LTM
- Delegacao automatica do build/publish da CLI para a Dev API quando executada a partir do WSL

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.94 (`92d552b`)
- support custom historical timestamp in add_chat_message for LTM queue replay (`367068d`)


---


## Release - v2.5.93
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added support for custom historical timestamps when recording chat messages in PostgreSQL LTM.

**Highlights:**
- Support custom timestamp/created_at field in add_chat_message WebSocket action and HTTP API
- Enable replay of queued offline interactions with preserved original timestamps in LTM
- Automatically delegate CLI build/publish to Dev API when executed from WSL

<!-- lang:pt -->
**Resumo:** Adicionado suporte a timestamps historicos personalizados na gravacao de mensagens de chat no LTM do PostgreSQL.

**Destaques:**
- Suporte a campo timestamp/created_at customizado na acao WebSocket add_chat_message e na API HTTP
- Viabiliza reenvio de interacoes enfileiradas offline preservando os timestamps originais no LTM
- Delegacao automatica do build/publish da CLI para a Dev API quando executada a partir do WSL

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.93 (`3331d92`)
- update development branch (`48c25bf`)
- renomear nomenclatura inicial dos containers e servicos para memo-desktop-* (`9999de6`)


---


## Release - v2.5.92
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.92 (`98adaea`)
- updates in development (`877bf37`)

#### 🐛 Correções
- zerar timeouts nos clientes HTTP de LLM para suportar APIs lentas e gratuitas (`67dc154`)


---


## Release - v2.5.91
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.91 (`a3bd03f`)
- update development branch (`c4b4fe4`)


---


## Release - v2.5.90
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.90 (`a444e66`)
- update development branch (`c6aa0cf`)


---


## Release - v2.5.89
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.89 (`78f2103`)
- update development branch (`fa10030`)
- update development branch (`18642b6`)


---


## Release - v2.5.87
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.87 (`3cf9753`)
- update development branch (`546d270`)


---


## Release - v2.5.86
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.86 (`36d5cc2`)
- update development branch (`c9617e1`)


---


## Release - v2.5.85
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.85 (`e6a90e0`)
- update development branch (`0101cee`)


---


## Release - v2.5.84
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.84 (`34f7c60`)
- update development branch (`7a63ce9`)


---


## Release - v2.5.83
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.83 (`bc9005e`)
- update development branch (`8bce941`)


---


## Release - v2.5.82
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.82 (`ae3a376`)
- update development branch (`50858f5`)


---


## Release - v2.5.81
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.81 (`7d7a417`)
- update development branch (`01ed037`)


---


## Release - v2.5.80
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.80 (`4989c7d`)
- update development branch (`939fc8b`)


---


## Release - v2.5.79
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.79 (`a452585`)
- update development branch (`e23ba3e`)


---


## Release - v2.5.78
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.78 (`e50dc53`)

#### 📝 Geral
- remocao de auto-injecao do AGENTS.md no ls/dir + sanitizacao append-only de outputs docker + estabilizacao do bloco keep_in_mind no KV-cache (`ccf46ee`)
- contagem de acesso no action get + ordem do bloco [SKILLS] favoritas > mais acessadas > alfabetica (regra Hermann 02/09) (`b0cd6c0`)


---


## Release - v2.5.77
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed WebSocket connection by automatically migrating legacy server URLs to api.memorouter.com.

**Highlights:**
- Added automatic migration of legacy domains (ai-brain.ddns.net / hahnd.duckdns.org) to https://api.memorouter.com
- Fixed HTTP 301 bad handshake error during WebSocket tunnel initialization
- Synchronized multi-repository publishing to memo-desktop and ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Correcao na conexao WebSocket com migracao automatica de dominios legados para api.memorouter.com.

**Destaques:**
- Adicionada migracao automatica de dominios antigos (ai-brain.ddns.net / hahnd.duckdns.org) para https://api.memorouter.com
- Corrigido o erro HTTP 301 bad handshake durante a inicializacao do tunel WebSocket
- Sincronizada a publicacao em ambos os repositorios memo-desktop e ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.77 (`a9a8871`)
- update development branch (`9bfddf6`)


---


## Release - v2.5.76
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Configured dual-repository release publishing to memo-desktop and legacy fallback ai-brain-desktop.

**Highlights:**
- Official downloads repository set to hermannhahn/memo-desktop
- Legacy fallback downloads repository set to hermannhahn/ai-brain-desktop for backwards compatibility
- Full release assets published to both repositories simultaneously

<!-- lang:pt -->
**Resumo:** Configuracao de publicacao simultanea em memo-desktop e no fallback legado ai-brain-desktop.

**Destaques:**
- Repositorio oficial de downloads configurado para hermannhahn/memo-desktop
- Repositorio legado de fallback configurado para hermannhahn/ai-brain-desktop para retrocompatibilidade
- Todos os instaladores e binarios publicados em ambos os repositorios simultaneamente

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.76 (`7f5cca3`)
- update development branch (`3fa4f0c`)


---


## Release - v2.5.75
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Updated release and download repository URLs to memo-desktop.

**Highlights:**
- Updated download repository URLs from ai-brain-desktop to memo-desktop
- Updated auto-update checker and installation scripts to use the new repository
- Published full release assets to hermannhahn/memo-desktop

<!-- lang:pt -->
**Resumo:** Atualizacao dos links e repositorio de download para memo-desktop.

**Destaques:**
- Atualizados os links do repositorio de download de ai-brain-desktop para memo-desktop
- Atualizados o verificador de atualizacoes e os scripts de instalacao para o novo repositorio
- Publicados todos os artefatos de instalacao no hermannhahn/memo-desktop

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.75 (`38ffbbe`)
- update development branch (`d35a4ec`)

#### 🔧 Manutenção / Refatoração
- remove temporary patch_msg.txt (`ff2919f`)


---


## Release - v2.5.74
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Official rebranding to MEMO Desktop and full migration to the MEMOROUTER ecosystem.

**Highlights:**
- Renamed desktop app to MEMO Desktop with official installer MEMO-Desktop-Setup
- All backend and WebSocket tunnel endpoints migrated to api.memorouter.com
- Startup performance optimized by removing background tool downloads

<!-- lang:pt -->
**Resumo:** Rebranding oficial para MEMO Desktop e migracao completa para o ecossistema MEMOROUTER.

**Destaques:**
- Aplicativo desktop renomeado para MEMO Desktop com instalador oficial MEMO-Desktop-Setup
- Todos os endpoints e tunel WebSocket migrados para api.memorouter.com
- Desempenho de inicializacao otimizado com remocao de downloads em background

### 📋 Changelog da Versão

**Total:** 6 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.74 (`4556a92`)
- update development branch (`c4f9286`)
- update development branch (`28e425a`)
- updates in feature/memorouter-migration (`539aa56`)

#### 📚 Documentação
- atualiza referencias de memo.exe e MEMO Desktop no dev-cli e diretrizes (`db42974`)
- atualiza referencias de arquitetura e fallback de download para memorouter e memo desktop (`1c2b796`)


---


## Release - v2.5.73
### 📣 Apresentação da Atualização

v2.5.73 - Correção no cadastro de Skills (erro 42P08) <!-- lang:en --> **Summary:** Fixes a database type-inference error that prevented saving skills through the Skills tool. **Highlights:** - SkillSave now works: removed a redundant subquery that reused the $1 SQL parameter in two places, causing PostgreSQL to reject the INSERT with "inconsistent types deduced for parameter $1 (42P08)" - Skills registration (used to catalog project skills, e.g. ai-brain / ai-bridge and their AGENTS.md) is unblocked <!-- lang:pt --> **Resumo:** Corrige um erro de inferência de tipo no banco que impedia salvar skills pela ferramenta de Skills. **Destaques:** - SkillSave voltou a funcionar: removida uma subquery redundante que reutilizava o parâmetro SQL $1 em dois lugares, fazendo o Postgres rejeitar o INSERT com "inconsistent types deduced for parameter $1 (42P08)" - Cadastro de skills (usado para catalogar skills de projetos, ex: ai-brain / ai-bridge e seus AGENTS.md) desbloqueado

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.73 (`310cfc6`)

#### 🐛 Correções
- corrige erro de tipos inconsistentes no SkillSave (42P08) (`7cf2be8`)


---


## Release - v2.5.72
### 📣 Apresentação da Atualização

v2.5.72 - Local Tools: accordion no meio das Configurações + bolinha on/off em tempo real <!-- lang:en --> **Summary:** Moves the Local Tools accordion to the middle of Settings and makes the on/off status dot update immediately on toggle. **Highlights:** - Local Tools accordion repositioned to the middle of the Settings tab (no longer at the top) - Toggling a tool now updates its green/gray status dot instantly, without needing to reload the tab <!-- lang:pt --> **Resumo:** Move o acordeon de Local Tools para o meio das Configurações e faz a bolinha de status ligado/desligado atualizar imediatamente. **Destaques:** - Acordeon de Local Tools reposicionado para o meio da aba Configurações (não fica mais no topo) - Alternar uma ferramenta agora atualiza a bolinha verde/cinza na hora, sem precisar recarregar a aba

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.72 (`d3b9d71`)
- mover acc.Local Tools p/ meio de Settings e bolinha on/off atualiza imediatamente (`02e07e0`)


---


## Release - v2.5.71
### 📣 Apresentação da Atualização

v2.5.71 - Local Tools em Settings (modo lista) + Traccar com hora local <!-- lang:en --> **Summary:** Moves Local Tools into Settings as an accordion (list view) and makes the Traccar container use the host timezone. **Highlights:** - Local Tools removed from the left-side menu; now lives inside Settings as an accordion, rendered as a compact list grouped by category instead of cards - Traccar container now runs with TZ env pulled from the OS where the desktop app is installed (Windows Get-TimeZone / /etc/timezone fallback), so GPS event times show local hours instead of UTC <!-- lang:pt --> **Resumo:** Move Local Tools para dentro de Configurações como acordeon (modo lista) e faz o container Traccar usar o fuso horário do sistema. **Destaques:** - Local Tools saiu do menu lateral; agora vive em Configurações como acordeon, renderizado em lista compacta por grupo em vez de cards - Container Traccar agora roda com TZ detectado do SO onde o desktop está instalado (Windows Get-TimeZone / fallback /etc/timezone), exibindo as horas locais dos eventos GPS em vez de UTC

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.71 (`6b19d5b`)
- mover Local Tools p/ accordion em Settings (modo lista) e usar TZ do SO no container Traccar (`b937fe4`)


---


## Release - v2.5.70
### 📣 Apresentação da Atualização

v2.5.70 - mpv auto-heal silencioso (sem janelas CMD)
<!-- lang:en -->
**Summary:** Makes the mpv auto-repair run fully silently on Windows (no more CMD windows popping up).
**Highlights:**
- Youtube: taskkill of mpv now runs with hideWindow()/CREATE_NO_WINDOW, matching the existing silent pattern used for the mpv package extraction
- No CMD windows flash when auto-heal kicks in
<!-- lang:pt -->
**Resumo:** Torna a auto-cura do mpv 100% silenciosa no Windows (sem janelas CMD piscando).
**Destaques:**
- Youtube: taskkill do mpv agora roda com hideWindow()/CREATE_NO_WINDOW, mesmo padrão silencioso já usado na extração do mpv
- Nenhuma janela CMD aparece quando a auto-cura é acionada

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.70 (`f873d8e`)

#### 🐛 Correções
- rodar taskkill do mpv de forma silenciosa (sem janela CMD) (`76daa84`)


---


## Release - v2.5.69
### 📣 Apresentação da Atualização

v2.5.68 — mpv file-lock fix + UI/i18n polish
<!-- lang:en -->
**Summary:** Fixes the mpv auto-install file-lock error and improves UI translations across languages.
**Highlights:**
- Youtube: end mpv process before reinstalling (fixes "file already in use" on Windows)
- i18n: setLanguage now falls back to English when a key is missing (fixes stale Portuguese text on language switch)
- i18n: nav .nav-item left-aligned (no more centered labels on long translated text)
- i18n: added Tracking Users translations for pt-PT, es, fr, de, zh, ru
- i18n: translated Dashboard KPI cards (Consolidated, Sleep Cycles, RAG Auto-Hit Rate, Eliminated) for es/fr/de/zh/ru
- UI: removed E2EE Protected badge from header
- UI: mpv auto-install error messages now in English
<!-- lang:pt -->
**Resumo:** Corrige o erro de file-lock no auto-install do mpv e melhora as traduções da interface em todas as línguas.
**Destaques:**
- Youtube: encerra o processo do mpv antes de reinstalar (corrige "arquivo já está sendo usado por outro processo" no Windows)
- i18n: setLanguage agora faz fallback para o inglês quando a chave não existe (corrige texto fantasma em português ao trocar de idioma)
- i18n: nav .nav-item alinhado à esquerda (sem rótulos centralizados em textos longos traduzidos)
- i18n: traduções de Tracking Users adicionadas em pt-PT, es, fr, de, zh, ru
- i18n: cards do Dashboard (Consolidated, Sleep Cycles, RAG Auto-Hit Rate, Eliminated) traduzidos para es/fr/de/zh/ru
- UI: badge E2EE Protected removido do header
- UI: mensagens de erro do auto-install do mpv agora em inglês

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.69 (`6d6a156`)


---


## Release - v2.5.68
### 📣 Apresentação da Atualização

v2.5.68 — mpv file-lock fix + UI/i18n polish
<!-- lang:en -->
**Summary:** Fixes the mpv auto-install file-lock error and improves UI translations across languages.
**Highlights:**
- Youtube: end mpv process before reinstalling (fixes "file already in use" on Windows)
- i18n: setLanguage now falls back to English when a key is missing (fixes stale Portuguese text on language switch)
- i18n: nav .nav-item left-aligned (no more centered labels on long translated text)
- i18n: added Tracking Users translations for pt-PT, es, fr, de, zh, ru
- i18n: translated Dashboard KPI cards (Consolidated, Sleep Cycles, RAG Auto-Hit Rate, Eliminated) for es/fr/de/zh/ru
- UI: removed E2EE Protected badge from header
- UI: mpv auto-install error messages now in English
<!-- lang:pt -->
**Resumo:** Corrige o erro de file-lock no auto-install do mpv e melhora as traduções da interface em todas as línguas.
**Destaques:**
- Youtube: encerra o processo do mpv antes de reinstalar (corrige "arquivo já está sendo usado por outro processo" no Windows)
- i18n: setLanguage agora faz fallback para o inglês quando a chave não existe (corrige texto fantasma em português ao trocar de idioma)
- i18n: nav .nav-item alinhado à esquerda (sem rótulos centralizados em textos longos traduzidos)
- i18n: traduções de Tracking Users adicionadas em pt-PT, es, fr, de, zh, ru
- i18n: cards do Dashboard (Consolidated, Sleep Cycles, RAG Auto-Hit Rate, Eliminated) traduzidos para es/fr/de/zh/ru
- UI: badge E2EE Protected removido do header
- UI: mensagens de erro do auto-install do mpv agora em inglês

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.68 (`a70dbae`)
- updates in development (`db7630c`)

#### 🐛 Correções
- alinhamento do menu Tracking Users em todas as línguas + traduções dos cards do Dashboard + remoção do badge E2EE do header + mensagens de erro do mpv em inglês (`5801c8a`)
- encerrar mpv em execução antes de reinstalar (corrige file lock) (`fa3df77`)


---


## Release - v2.5.67
### 📣 Apresentação da Atualização

<!-- lang:en -->
Fix YouTube playback: send correct Track shape (v2.5.67)

Highlights:
- FIXED the actual root cause of "no audio": the youtube-music-cli expects the PLAY command's track in the shape {videoId, title, artists:[{artistId,name}]}. Our search was normalizing results to {video_id, id, artists:[]string}; sending that raw track made the CLI crash with "undefined is not an object (evaluating 'value.replace')" — so the player was never invoked. Now youtubePlay converts the first search result via searchResultToCLITrack(), guaranteeing videoId + artists as objects, which actually starts playback.

<!-- lang:pt -->
Correção da reprodução do YouTube: formato Track correto (v2.5.67)

Destaques:
- CORRIGE a causa raiz real do "nenhum áudio": o youtube-music-cli espera no comando PLAY um track no formato {videoId, title, artists:[{artistId,name}]}. Nossa busca normalizava para {video_id, id, artists:[]string}; ao enviar esse track cru, o CLI quebrava com "undefined is not an object (evaluating 'value.replace')" — e o player nunca era chamado. Agora o youtubePlay converte o primeiro resultado via searchResultToCLITrack(), garantindo videoId + artists como objetos, o que de fato inicia a reprodução.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.67 (`1b2af9f`)

#### 🐛 Correções
- enviar track no formato Track correto do CLI (corrige 'value.replace') (`61a5977`)


---


## Release - v2.5.66
### 📣 Apresentação da Atualização

<!-- lang:en -->
Real mpv auto-heal + agent container labels fix (v2.5.66)

Highlights:
- FIXED the auto-heal not running: YouTubeToolsReady now requires a complete mpv (mpv.exe + official libmpv-*.dll). A broken mpv.exe (e.g. only d3dcompiler_43.dll) no longer counts as "ready", so the app ALWAYS runs ensurePortableMPV on the youtube tool start. If the mpv is broken/incomplete, it now deletes it and downloads the complete portable package (mpv.exe + all runtime DLLs + embedded ffmpeg).
- Agent-created containers now ALWAYS get the managed_by/agent_project/agent_id labels, so the agent can use (exec) the container it created without restrictions, regardless of the Agent Container sandbox setting.

<!-- lang:pt -->
Auto-cura real do mpv + correção de labels em containers (v2.5.66)

Destaques:
- CORRIGE o auto-cura que não rodava: YouTubeToolsReady agora exige mpv íntegro (mpv.exe + lib oficial libmpv-*.dll). Um mpv.exe quebrado (ex.: só d3dcompiler_43.dll) não conta mais como pronto, então o app SEMPRE roda o ensurePortableMPV ao iniciar a ferramenta de YouTube. Se o mpv estiver quebrado/incompleto, agora ele o apaga e baixa o pacote portátil completo (mpv.exe + todas as DLLs + ffmpeg embutido).
- Containers criados pelo agente agora recebem SEMPRE as labels managed_by/agent_project/agent_id, então o agente consegue usar (exec) o container que criou sem restrições, independente do modo sandbox no Agent Container.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.66 (`009c243`)

#### 🐛 Correções
- auto-heal do mpv de fato + labels sempre injetadas (`a4aeee9`)


---


## Release - v2.5.65
### 📣 Apresentação da Atualização

<!-- lang:en -->
Complete portable mpv self-heal fix (v2.5.65)

Highlights:
- Fixed audio still not playing: the integrity check now requires the actual mpv runtime library (mpv-1.dll / mpv-2.dll / libmpv*.dll), not just any DLL. A broken install that only had d3dcompiler_43.dll was wrongly treated as complete.
- Auto-heal: if the official mpv library is missing, the app removes the broken install and downloads the complete portable package (shinchiro/mpv-winbuild-cmake) — works on any Windows 10/11.

<!-- lang:pt -->
Correção de auto-cura do mpv portátil completo (v2.5.65)

Destaques:
- Corrige o áudio que continuava sem tocar: a verificação de integridade agora exige a biblioteca de runtime real do mpv (mpv-1.dll / mpv-2.dll / libmpv*.dll), e não qualquer DLL. Uma instalação quebrada que só tinha d3dcompiler_43.dll era tratada como completa.
- Auto-cura: se a biblioteca oficial do mpv estiver faltando, o app remove a instalação quebrada e baixa o pacote portátil completo (shinchiro/mpv-winbuild-cmake) — funciona em qualquer Windows 10/11.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.65 (`c05f704`)

#### 🐛 Correções
- mpvLooksComplete exige a lib oficial do mpv (auto-cura) (`cd099ff`)


---


## Release - v2.5.64
### 📣 Apresentação da Atualização

<!-- lang:en -->
Complete portable mpv audio fix (v2.5.64)

Highlights:
- Fixed audio not playing: the app now downloads the COMPLETE portable mpv package (shinchiro/mpv-winbuild-cmake), which includes mpv.exe + all runtime DLLs + embedded ffmpeg, instead of copying from a partial winget install.
- Self-updatable: resolves the latest mpv release automatically (stays current).
- Detects and repairs broken/missing mpv installs.
- Silent mode kept: no CMD/console windows.

<!-- lang:pt -->
Correção do áudio com mpv portátil completo (v2.5.64)

Destaques:
- Corrige o áudio que não tocava: o app agora baixa o pacote portátil COMPLETO do mpv (shinchiro/mpv-winbuild-cmake), com mpv.exe + todas as DLLs de runtime + ffmpeg embutido, em vez de copiar de uma instalação winget incompleta.
- Atualizável: resolve automaticamente a release mais recente do mpv (fica sempre atualizado).
- Detecta e corrige instalações quebradas/incompletas do mpv.
- Modo silencioso mantido: sem janelas CMD/console.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.64 (`96f5f98`)

#### 🐛 Correções
- download complete portable mpv package (full DLLs) (`380cfcc`)


---


## Release - v2.5.63
### 📣 Apresentação da Atualização

<!-- lang:en -->
Audio playback fix (v2.5.63)

Highlights:
- Silent mode: all local MCP tools (youtube daemon, yt-dlp, winget, installers) now hide the console window via CREATE_NO_WINDOW — no more CMD popping up.
- Self-contained audio: mpv is now portable and bundled into AppData tools (with a preset mpv.conf: wasapi output, volume 100, no-video, no-terminal). No dependency on a pre-installed mpv on the user's PC — the app installs everything it needs.

<!-- lang:pt -->
Correção de reprodução de áudio (v2.5.63)

Destaques:
- Modo silencioso: todas as ferramentas MCP locais (daemon do youtube, yt-dlp, winget, instaladores) agora ocultam a janela de console via CREATE_NO_WINDOW — nada de CMD surgindo na tela.
- Áudio autocontido: o mpv agora é portátil e instalado dentro do AppData (com mpv.conf pré-configurado: saída wasapi, volume 100, no-video, no-terminal). Sem dependência de mpv pré-instalado no PC do usuário — o app instala tudo que precifica.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.63 (`6f04f50`)

#### 🐛 Correções
- audio playback portability and silent mode (`c37e759`)


---


## Release - v2.5.62
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** This update adds the new YouTube Music local tool, letting your AI assistant search and play videos/music on your computer, control playback, and read video transcripts when available.

**Highlights:**
- New Local Tools card "YouTube Music" for searching YouTube and playing videos/music with play, pause, next, previous, and volume controls.
- After updating, the app automatically installs the required components, so the tool works on any computer with internet.
- Video transcripts are read automatically when subtitles are available.

<!-- lang:pt -->
**Resumo:** Esta atualização adiciona a nova ferramenta local YouTube Music, permitindo que seu assistente de IA procure e toque vídeos/músicas no computador, controle a reprodução e leia a transcrição dos vídeos quando disponível.

**Destaques:**
- Novo card YouTube Music em Ferramentas Locais para buscar no YouTube e tocar vídeos/músicas com controles de play, pausa, próximo, anterior e volume.
- Após atualizar, o aplicativo instala automaticamente os componentes necessários, funcionando em qualquer computador com internet.
- A transcrição do vídeo é lida automaticamente quando há legendas disponíveis.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.62 (`15a33aa`)
- update development branch (`8b1640d`)


---


## Release - v2.5.61
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed the 'Verify Security' button in Settings so the E2EE verification window opens correctly and you can compare the Safety Number with the AI-Brain panel.

**Highlights:**
- The E2EE Security button now opens the verification modal with the Safety Number, encryption status and counters.
- Small internal layout fix so the security window is shown above other dialogs.

<!-- lang:pt -->
**Resumo:** Corrigido o botão 'Verify Security' nas Configurações para que a janela de verificação E2EE abra corretamente e você possa comparar o Safety Number com o painel AI-Brain.

**Destaques:**
- O botão de segurança E2EE agora abre o modal de verificação com o Safety Number, status da criptografia e contadores.
- Correção interna de layout para a janela de segurança aparecer acima das demais.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.61 (`54a1b2c`)
- update development branch (`d1d65bd`)


---


## Release - v2.5.60
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** This update makes the app simpler and safer: the Agents tab was removed, WhatsApp works again with end-to-end encryption, and the E2EE security details now live in a dedicated section in Settings.

**Highlights:**
- WhatsApp restored after the end-to-end encryption upgrade.
- E2EE protection details moved to Settings, under E2EE Encryption.
- Cleaner navigation with shorter descriptions on the main tabs.

<!-- lang:pt -->
**Resumo:** Esta atualização deixa o aplicativo mais simples e seguro: a aba Agents foi removida, o WhatsApp voltou a funcionar com criptografia de ponta a ponta e os detalhes de segurança E2EE agora ficam em uma seção própria em Configurações.

**Destaques:**
- WhatsApp funcionando novamente após a atualização da criptografia de ponta a ponta.
- Detalhes da proteção E2EE movidos para Configurações, na opção E2EE Encryption.
- Navegação mais limpa e descrições mais curtas nas abas principais.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.60 (`98f5246`)
- update development branch (`4c9428e`)


---


## Release - v2.5.59
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Optimized the End-to-End Protection banner to fit on a single line with compact typography and hover-expandable Safety Number.

**Highlights:**
- Compact single-line security banner with nowrap constraints
- Truncated Safety Number with smooth expansion on hover
- Proportional font sizes and cleaner desktop visual footprint

<!-- lang:pt -->
**Resumo:** Otimiza??o da barra de Prote??o de Ponta a Ponta para linha ?nica com tipografia compacta e Safety Number expans?vel no hover.

**Destaques:**
- Banner de seguran?a compacto em linha ?nica sem quebras de texto
- Safety Number truncado com expans?o suave ao passar o mouse
- Tipografia proporcional e layout mais limpo na interface

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.59 (`46876ac`)

#### 🔧 Manutenção / Refatoração
- made E2EE banner single line with compact typography and truncated safety number (`b296495`)


---


## Release - v2.5.58
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Refined the layout and borders of the global End-to-End Protection banner with aligned margins, spacing, and square borders.

**Highlights:**
- Added 2rem lateral margins and spacious padding for seamless alignment with header and tabs
- Styled the security banner with clean square borders
- Preserved dynamic real-time Safety Number and frame counters

<!-- lang:pt -->
**Resumo:** Ajuste no layout e bordas da barra global de Prote??o de Ponta a Ponta com margens alinhadas, espa?amento e bordas quadradas.

**Destaques:**
- Margens laterais de 2rem e padding espa?oso para alinhamento perfeito com o cabe?alho e abas
- Estiliza??o do banner de seguran?a com bordas quadradas
- Preserva??o do Safety Number din?mico e contadores de frames em tempo real

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.58 (`4d28b0c`)

#### 🔧 Manutenção / Refatoração
- set square borders for global E2EE banner (`91c602c`)
- added margin and padding spacing to global E2EE banner (`0d88e03`)


---


## Release - v2.5.57
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Relocated the End-to-End Encryption status bar to a full-width header banner and renamed branding to End-to-End Protection.

**Highlights:**
- Full-width horizontal E2EE security banner positioned below the header
- Renamed security title to End-to-End Protection across 8 languages
- Removed inner card sub-badge for a cleaner services grid layout

<!-- lang:pt -->
**Resumo:** Barra de status da Criptografia de Ponta a Ponta reposicionada para banner horizontal em largura total abaixo do cabe?alho.

**Destaques:**
- Banner horizontal E2EE em largura total logo abaixo do topo
- T?tulo de seguran?a renomeado para Prote??o de Ponta a Ponta nos 8 idiomas
- Sub-badge interno removido do card para uma grade de servi?os mais limpa

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.57 (`a33dedb`)
- moved E2EE status bar below header full-width and renamed to End-to-End Protection (`66e0989`)


---


## Release - v2.5.56
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Standardized the public code signing certificate to AIBrainDevCert.crt with legacy compatibility fallbacks and updated installation scripts.

**Highlights:**
- Renamed public digital certificate to AIBrainDevCert.crt
- Enhanced install-cert.bat and automated installers with fallback support
- Documented planned migration cleanup cycle

<!-- lang:pt -->
**Resumo:** Padroniza??o do certificado digital p?blico para AIBrainDevCert.crt com fallback de compatibilidade e scripts de instala??o atualizados.

**Destaques:**
- Certificado digital p?blico renomeado para AIBrainDevCert.crt
- Scripts install-cert.bat e instaladores com suporte a fallback
- Documenta??o do ciclo planejado de limpeza de migra??o

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.56 (`527150f`)
- standardized digital certificate naming to AIBrainDevCert.crt with backward compatibility fallback (`853c079`)
- update development branch (`36f60a8`)

#### 📚 Documentação
- added closed-source freeware and commercial EULA license (`53611db`)
- updated README.md with AI-Brain Desktop branding, features and instructions (`61a25bb`)


---


## Release - v2.5.55
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added the new Agents Console tab directly in the sidebar and cleaned up the header navigation.

**Highlights:**
- New Agents tab integrated below Dashboard opening the web console
- Removed header AI-BRAIN button for a cleaner layout
- Full i18n support in 8 languages for the new tab

<!-- lang:pt -->
**Resumo:** Adi??o da nova aba Console de Agentes no menu lateral e simplifica??o do cabe?alho.

**Destaques:**
- Nova aba Agentes integrada abaixo de Dashboard abrindo o console web
- Remo??o do bot?o AI-BRAIN do topo para um visual mais limpo
- Suporte i18n completo nos 8 idiomas para a nova aba

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.55 (`3ed41c5`)
- removed AI-BRAIN header button and added Agents console tab below Dashboard (`a7c7351`)


---


## Release - v2.5.54
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Updated logo subtitle to Desktop App vX.X.X, standardized UI branding and configured new distribution repository.

**Highlights:**
- Updated logo branding to Desktop App vX.X.X
- Standardized UI and translation keys
- Configured distribution to hermannhahn/ai-brain-desktop

<!-- lang:pt -->
**Resumo:** Texto abaixo da logo atualizado para Desktop App vX.X.X, padroniza??o visual e novo reposit?rio de distribui??o configurado.

**Destaques:**
- Texto abaixo da logo atualizado para Desktop App vX.X.X
- Padroniza??o da interface e chaves de tradu??o
- Configura??o do reposit?rio de distribui??o hermannhahn/ai-brain-desktop

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.54 (`c73ff7a`)
- standardized user-facing nomenclature to AI-BRAIN Desktop App across UI, i18n, installer and skills (`a60ae9d`)
- updated download and releases repository references from ai-bridge-download to ai-brain-desktop (`cfcc945`)


---


## Release - v2.5.53
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed E2EE Safety Number display in verification modal and enhanced WebSocket handshake negotiation.

**Highlights:**
- Robust camelCase/snake_case property mapping for E2EE status
- Fallback payload parser for E2EE handshake acknowledgements
- Direct interactive Safety Number and key fingerprint verification

<!-- lang:pt -->
**Resumo:** Corre??o na exibi??o do Safety Number no modal de verifica??o E2EE e aprimoramento no handshake WebSocket.

**Destaques:**
- Mapeamento robusto de propriedades camelCase/snake_case para status E2EE
- Parser resiliente de payload para confirma??es de handshake E2EE
- Verifica??o interativa direta do Safety Number e impress?o digital das chaves

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.53 (`37c5713`)
- enhanced E2EE visual proof with sub-card, Safety Number and real-time counters on AI-BRAIN card + i18n for 8 languages (`7b7d80c`)

#### 🐛 Correções
- robust E2EE property mappings and fallback payload parsing for Safety Number display in desktop app (`f5773cb`)


---


## Release - v2.5.52
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** End-to-end encryption (E2EE) with X25519 and AES-256-GCM for the WebSocket bridge between AI-Bridge and AI-Brain.

**Highlights:**
- Full Zero-Knowledge WebSocket encryption
- Safety Number verification modal and real-time statistics
- i18n support in 8 languages

<!-- lang:pt -->
**Resumo:** Criptografia de ponta a ponta (E2EE) com X25519 e AES-256-GCM para o canal WebSocket entre AI-Bridge e AI-Brain.

**Destaques:**
- Blindagem Zero-Knowledge no canal WebSocket
- Modal de verifica??o de Safety Number e estat?sticas em tempo real
- Suporte i18n em 8 idiomas

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.52 (`79f3251`)
- updates for release v2.5.52 (`2aa7056`)
- updates in feature/e2ee-websocket-encryption (`161aad6`)
- implement end-to-end encryption (E2EE) with X25519, AES-256-GCM and Safety Number verification (`6228bd9`)

#### 🔧 Manutenção / Refatoração
- prepare version for release (`2c65e4c`)


---


## Release - v2.5.51
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Updated all UI labels and service cards to AI-BRAIN and ensured Windows installer updates both ai-brain.exe and existing ai-bridge.exe shortcuts.

**Highlights:**
- Renamed central service card and connection modals to AI-BRAIN in all 8 languages
- Fixed Windows installer to update both ai-brain.exe and existing ai-bridge.exe binaries in Program Files
- Automatically cleaned up legacy desktop shortcuts

<!-- lang:pt -->
**Resumo:** Atualizados todos os r?tulos de interface e cards de servi?o para AI-BRAIN e garantida a atualiza??o pelo instalador tanto do ai-brain.exe quanto de atalhos existentes do ai-bridge.exe.

**Destaques:**
- Card central de servi?os e modais de conex?o renomeados para AI-BRAIN em todos os 8 idiomas
- Instalador do Windows ajustado para atualizar tanto ai-brain.exe quanto ai-bridge.exe na pasta de instala??o
- Limpeza autom?tica de atalhos antigos na ?rea de trabalho

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.51 (`9a23574`)
- update development branch (`0436fbb`)


---


## Release - v2.5.50
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Full rebranding to AI-Brain Desktop with unified visual identity and complete support for NVIDIA API (build.nvidia.com), TokenRa and multi-provider LLMs in the Model Sleep module.

**Highlights:**
- Official rebranding to AI-Brain Desktop with updated branding, versioning and canonical installers
- NVIDIA API integration with 19 high-performance and free models for model sleep and emotional indexing
- Multi-provider support including TokenRa, OpenAI, Gemini, Claude, Grok and DeepSeek
- Canonical AI-Brain-Setup.exe binary for persistent Windows Defender and SmartScreen reputation

<!-- lang:pt -->
**Resumo:** Rebranding completo para AI-Brain Desktop com identidade visual unificada e suporte total ? API da NVIDIA (build.nvidia.com), TokenRa e m?ltiplos provedores LLM no m?dulo do Sono do Modelo.

**Destaques:**
- Rebranding oficial para AI-Brain Desktop com logo atualizada, nova tag de vers?o e instaladores can?nicos
- Integra??o com a API da NVIDIA com 19 modelos gratuitos e de alto desempenho para o sono e indexa??o emocional
- Suporte a m?ltiplos provedores incluindo TokenRa, OpenAI, Gemini, Claude, Grok e DeepSeek
- Bin?rio can?nico AI-Brain-Setup.exe para ac?mulo cont?nuo de reputa??o no Windows Defender e SmartScreen

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.50 (`8ff9770`)
- updates in feature/nvidia-and-rebrand-ai-brain-desktop (`44755d4`)


---


## Release - v2.5.49
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added phonetic query expansion to semantic memory search. The MetaphoneBR module now generates sound-alike variants (e.g. 'beats' -> 'bits') so voice-transcription typos are recovered. Applies to both /memories/search and /rag/search.

**Highlights:**
- New pure-Go internal/phonetic package (MetaphoneBR): accents normalization, digraph collapsing (ch->x, ph->f, qu->k, ea/ee->i), conditioned consonants and vowel removal
- Phonetic recall as complement: variants merged ranked just below pure semantic hits (0.8 factor), respecting the requested limit
- RAG benefits automatically (same handler)

<!-- lang:pt -->
**Resumo:** Adicionada expansão fonética da query na busca semântica de memórias. O módulo MetaphoneBR agora gera variantes com som parecido (ex: 'beats' -> 'bits') para recuperar erros de transcrição de voz. Vale tanto para /memories/search quanto para /rag/search.

**Destaques:**
- Novo pacote internal/phonetic (Go puro): normalização de acentos, colapso de dígrafos (ch->x, ph->f, qu->k, ea/ee->i), consoantes condicionadas e remoção de vogais
- Recall fonético complementar: variantes mescladas rankeando logo abaixo dos resultados semânticos puros (fator 0.8), respeitando o limite pedido
- RAG beneficiado automaticamente (mesmo handler)

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.49 (`b1081b3`)
- expansão fonética da query na busca semântica (MetaphoneBR) (`be9c435`)


---


## Release - v2.5.48
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added complete Full Backup and Restore features for all user definitions and Traccar data, fixed automatic memory backup scheduling, and updated Dashboard metrics to feature Waking Memories.

**Highlights:**
- Added Full Backup and Full Restore cards in Backup tab to export/import all user configs, IoT keys, and Traccar users and devices.
- Fixed automatic memory backup scheduler with continuous check and persistent timestamp tracking.
- Renamed backup labels to Memory Backup and Restore Memory, preserving strict vector memory scope.
- Updated Dashboard KPI to Waking Memories, strictly displaying active pre-sleep memories.

<!-- lang:pt -->
**Resumo:** Adicionados recursos completos de Full Backup e Restaurar Full Backup para todas as definições do usuário e dados do Traccar, corrigido o agendador de backup automático da memória e atualizado o indicador do Dashboard para Memórias de Vigília.

**Destaques:**
- Adicionados cards de Full Backup e Restaurar Full Backup na aba Backup para exportar/importar todas as configurações do usuário, chaves IoT e usuários/dispositivos do Traccar.
- Corrigido o agendador de backup automático de memória com checagem contínua e persistência do último backup.
- Renomeadas as nomenclaturas para Memory Backup e Restore Memory, mantendo escopo estrito no banco vetorial.
- Atualizado o indicador do Dashboard para Memórias de Vigília, exibindo estritamente as memórias ativas pré-sono.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.48 (`65447a3`)
- updates for release v2.5.47 (`a19d445`)
- updates in feature/full-backup-and-scheduler-fix (`fc392d6`)
- updates in development (`1efad64`)


---


## Release - v2.5.46
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added GPS precision filters (accuracy 100m + max speed) to eliminate phantom distance and jitter in Traccar positions. Fixes false route reporting.

<!-- lang:pt -->
**Resumo:** Implementados filtros de precisão GPS (precisão 100m + velocidade máxima) eliminando distância fantasma e jitter nas posições do Traccar. Corrige o relato de rotas falsas.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.46 (`fbbad0a`)


---


## Release - v2.5.45
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added GPS precision filters (accuracy 100m + max speed) to eliminate phantom distance and jitter in Traccar positions. Fixes false route reporting.

<!-- lang:pt -->
**Resumo:** Implementados filtros de precisão GPS (precisão 100m + velocidade máxima) eliminando distância fantasma e jitter nas posições do Traccar. Corrige o relato de rotas falsas.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.45 (`eef0fb6`)

#### 🐛 Correções
- filtro de precisão GPS anti-jitter (camadas 1 e 2) — elimina distância fantasma (`a3e2705`)


---


## Release - v2.5.44
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Restored strict preservation of user-configured browser visibility mode and Chrome DevTools tool status.

**Highlights:**
- User customizations for Browser Visibility Mode (Maximized or Silent) and Chrome DevTools toggle are now strictly respected.
- Silent mode and disabled Chrome tool remain the clean defaults for new installations.

<!-- lang:pt -->
**Resumo:** Restaurada a preservacao estrita do modo de visibilidade do navegador e do status da ferramenta Chrome DevTools configurados pelo usuario.

**Destaques:**
- As configuracoes personalizadas do usuario para o Modo de Visibilidade (Maximizado ou Silencioso) e ativacao do Chrome DevTools agora sao estritamente respeitadas.
- O modo silencioso e a ferramenta Chrome desabilitada permanecem como padroes limpos para novas instalacoes.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.44 (`c599f3c`)

#### 🐛 Correções
- preserve user-defined chrome mode and tool toggles on config load (`652e7c4`)


---


## Release - v2.5.43
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Configured silent browser visibility mode by default and disabled Chrome DevTools automation tool by default.

**Highlights:**
- Default browser visibility mode is now set to Silent (Background/Headless) for all automation tasks.
- Chrome DevTools MCP tool is now disabled by default and can be enabled whenever needed.
- Existing user installations are automatically migrated to the new default settings upon updating.

<!-- lang:pt -->
**Resumo:** Configurado o modo silencioso de visibilidade do navegador por padrao e desabilitada a ferramenta de automacao Chrome DevTools por padrao.

**Destaques:**
- O modo padrao de visibilidade do navegador agora e Silencioso (Segundo Plano / Headless).
- A ferramenta MCP Chrome DevTools passa a vir desabilitada por padrao, podendo ser ativada quando necessario.
- As instalacoes existentes dos usuarios sao migradas automaticamente para essas novas preferencias ao atualizar.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.43 (`fc973fb`)
- default chrome mode to headless and disable chrome mcp tool by default with forced migration (`5f63a4a`)


---


## Release - v2.5.42
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added headless Chrome web search and page fetch tools, removed browser-use, and enabled automatic reverse geocoding for Traccar GPS positions.

**Highlights:**
- Added fetch_web_page and search_web_data tools running with headless Chrome/Edge and automatic JS/SPA rendering.
- Removed legacy browser-use module and dependencies for a lighter footprint.
- Added automatic reverse geocoding to Traccar positions with memory cache, returning full street addresses and Google Maps links.

<!-- lang:pt -->
**Resumo:** Adicao de ferramentas silenciosas de busca e leitura web via Chrome, remocao do browser-use e geocodificacao reversa automatica para posicoes GPS do Traccar.

**Destaques:**
- Novas ferramentas fetch_web_page e search_web_data executadas em segundo plano no Chrome/Edge com renderizacao de SPAs e React.
- Remocao completa do modulo browser-use para reducao de consumo de recursos.
- Geocodificacao reversa automatica nas consultas de localizacao do Traccar com cache em memoria, entregando endereco completo e links do Google Maps.

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.42 (`f6a0d0e`)
- add automatic reverse geocoding to traccar positions (`488ba5a`)
- add headless chrome fetch_web_page and search_web_data tools (`586de5b`)
- remove browser-use module and clean up references (`9a53577`)
- updates in development (`4e275db`)


---


## Release - v2.5.41
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Rock-solid WhatsApp QR Code pairing handshake stability and concurrency protection.

**Highlights:**
- Eliminated concurrent session restarts during WhatsApp Web QR Code scanning, preventing device connection failures.
- Added a 25-second cooldown on session restart requests to safeguard cryptographic handshakes.
- Allocated 512MB shared memory (shm_size) for WhatsApp Web browser stability in Docker.

<!-- lang:pt -->
**Resumo:** Estabilidade absoluta no handshake de pareamento do QR Code do WhatsApp e protecao contra concorrencia.

**Destaques:**
- Eliminadas reinicializacoes concorrentes de sessao durante o escaneamento do QR Code, prevenindo falhas de conexao no celular.
- Adicionado cooldown de 25 segundos para solicitacoes de restart de sessao para proteger o handshake criptografico.
- Configurados 512MB de memoria compartilhada (shm_size) para a estabilidade do navegador do WhatsApp Web no Docker.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.41 (`3fa3a10`)
- update development branch (`088fe41`)

#### 🐛 Correções
- resolve whatsapp qr pairing handshake timeout by preventing concurrent session restarts and adding shm_size 512mb (`b8faf5e`)


---


## Release - v2.5.40
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Persistent Windows workspace bind mount, async non-blocking container creation, and shell stability fixes.

**Highlights:**
- Implemented automatic persistent workspace and home directory bind mount in Windows (%USERPROFILE%/Agents) for all agent containers.
- Added non-blocking asynchronous container creation in docker_create with real-time status and logs monitoring to eliminate timeouts.
- Injected stdin_open and tty into container compose files preventing shell exit and CrashLoop Restarting(0).

<!-- lang:pt -->
**Resumo:** Bind mount persistente de workspace no Windows, criacao assincrona nao-bloqueante de containers e correcoes de estabilidade de shell.

**Destaques:**
- Implementado mapeamento automatico permanente de workspace e diretorio home no Windows (%USERPROFILE%/Agents) para todos os containers de agentes.
- Adicionada criacao assincrona nao-bloqueante no docker_create com acompanhamento de progresso em tempo real via status e logs para eliminar timeouts.
- Injetados stdin_open e tty nos arquivos compose prevenindo finalizacao imediata de shell e CrashLoop de reinicializacao Restarting(0).

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.40 (`5b90ba7`)
- update development branch (`013fc4c`)
- add persistent windows workspace bind mount and async non-blocking docker container creation (`d2e5958`)

#### 🐛 Correções
- inject stdin_open and tty to prevent CrashLoop Restarting(0) in agent containers (`a4703a7`)


---


## Release - v2.5.39
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Resilient WhatsApp QR Code auto-recovery and extended MCP Docker execution timeouts.

**Highlights:**
- Added automatic session recovery and short-term caching for WhatsApp QR Code to eliminate pairing timeouts.
- Extended MCP Docker container creation and tool execution timeout to 5 minutes with custom timeout support.
- Added direct base image parameter support in docker_create tool with automatic Dockerfile generation.

<!-- lang:pt -->
**Resumo:** Auto-recuperacao resiliente do QR Code do WhatsApp e ampliacao de timeouts do MCP Docker.

**Destaques:**
- Adicionada auto-recuperacao automatica de sessao e cache de curta duracao para o QR Code do WhatsApp, eliminando falhas de pareamento.
- Ampliado o tempo limite de criacao e execucao de containers MCP Docker para 5 minutos com suporte a timeouts customizados.
- Adicionado suporte direto ao parametro de imagem base na ferramenta docker_create com geracao automatica de Dockerfile.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.39 (`b6a2bf4`)
- update development branch (`54418e4`)

#### 🐛 Correções
- extend mcp docker timeout to 300s, support custom timeout and image param in docker_create (`3d0c5bb`)
- resolve intermittent whatsapp qr code display and session timeout recovery (`77cc784`)


---


## Release - v2.5.37
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Enhanced long-term memory search with unlimited time span, declarative notes integration, and access frequency ranking.

**Highlights:**
- Expanded memory search across all sessions and historical timeframes without date boundaries.
- Integrated semantic vector search directly for declarative notes alongside session memories and raw messages.
- Added intelligent ranking ordered by importance score and access count.

<!-- lang:pt -->
**Resumo:** Busca aprimorada de mem?rias de longo prazo com per?odo ilimitado, integra??o de notas declarativas e ordena??o por frequ?ncia de acesso.

**Destaques:**
- Ampliada a busca de mem?rias por todas as sess?es e per?odos hist?ricos sem restri??o de data.
- Integrada a busca vetorial sem?ntica de notas declarativas em conjunto com sess?es e mensagens brutas.
- Adicionada ordena??o inteligente por pontua??o de import?ncia e contagem de acessos.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.37 (`fce0ba8`)
- update development branch (`228b0fe`)
- enhance long-term memory search with unlimited time, notes and access count ordering (`2e2925b`)


---


## Release - v2.5.36
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Professional and generic AI System service account for Traccar GPS fleet intelligence.

**Highlights:**
- Updated Traccar internal technical service account name and email to AI System (AI Bridge) and ai.system@local.traccar for enterprise AI fleet tracking environments.
- Added automated database migration in Traccar H2 storage to seamlessly update existing service accounts.

<!-- lang:pt -->
**Resumo:** Conta de servi??o de IA gen??rica e profissional para o m??dulo de rastreamento inteligente Traccar.

**Destaques:**
- Atualizado o nome e e-mail do usu??rio t??cnico padr??o do Traccar para AI System (AI Bridge) e ai.system@local.traccar, garantindo um padr??o corporativo e profissional para rastreamento veicular e de frotas com IA.
- Adicionada rotina de migra????o autom??tica no banco de dados local do Traccar para atualizar instala????es existentes de forma transparente.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.36 (`54fb858`)
- update development branch (`6fd5304`)
- updates in development (`788d884`)


---


## Release - v2.5.35
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Reactive loading of AI-Brain agents in Model Sleep processing dropdown with fallback API indicators.

**Highlights:**
- Enabled reactive on-demand fetching of owner agents in Settings whenever navigating to the tab, expanding the Model Sleep accordion, or focusing the model selector.
- Added visual indicators for active fallback LLM providers in agent labels and reinforced query authentication when retrieving agent profiles from the server.

<!-- lang:pt -->
**Resumo:** Carregamento reativo dos agentes do AI-Brain no seletor do Sono do Modelo com indicador de APIs de fallback.

**Destaques:**
- Habilitado o carregamento reativo sob demanda dos agentes do usu??rio nas Configura????es ao abrir a aba, expandir o accordion do Sono do Modelo ou focar no seletor de modelos.
- Adicionada indica????o visual de provedores de fallback ativos no nome dos agentes e refor??ada a autentica????o da requisi????o ao buscar a lista no servidor.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.35 (`cf14d9e`)
- update development branch (`7085218`)
- updates in development (`1f583d3`)


---


## Release - v2.5.34
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fix Traccar API token request payload with ISO 8601 expiration form data.

**Highlights:**
- Properly formatted Traccar token issuance requests with form-urlencoded expiration payload, resolving HTTP 400 Bad Request and enabling seamless GPS tracking user management.
- Added automatic fallback handling for legacy and modern Traccar server versions.

<!-- lang:pt -->
**Resumo:** Corre????o no payload de requisi????o do token do Traccar com dados de formul??rio e expira????o em ISO 8601.

**Destaques:**
- Formatadas adequadamente as requisi????es de emiss??o de token do Traccar com dados de formul??rio e par??metro de expira????o, corrigindo o erro HTTP 400 e liberando a gest??o de usu??rios no m??dulo de rastreamento GPS.
- Adicionado tratamento de fallback autom??tico para compatibilidade com vers??es legadas e modernas do servidor Traccar.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.34 (`3eaae4f`)
- update development branch (`454ed20`)
- updates in development (`8ca9be4`)


---


## Release - v2.5.33
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Complete uninstaller cleanup for all persistent services data and redirection of updater temporary folders to Windows Temp directory.

**Highlights:**
- Enhanced uninstaller to recursively wipe all files in AppData AI Bridge (including ai-bridge-services, .env, docker-compose.yml, and init.sql) when full data removal is confirmed.
- Redirected updater WebView2 user data to Windows Temp directory, eliminating residual update.exe folders in AppData Roaming and adding automated cleanup for legacy updater artifacts.

<!-- lang:pt -->
**Resumo:** Limpeza completa de todos os dados residuais na desinstala????o e redirecionamento de pastas tempor??rias do atualizador para a pasta Temp do Windows.

**Destaques:**
- Aprimorado o desinstalador para remover recursivamente todos os arquivos em AppData AI Bridge (incluindo ai-bridge-services, .env, docker-compose.yml e init.sql) quando confirmada a remo????o total de dados.
- Redirecionados os dados de navega????o do atualizador para o diret??rio Temp do Windows, eliminando a cria????o de pastas residuais update.exe no AppData Roaming e incluindo limpeza autom??tica de res??duos antigos.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.33 (`601331f`)
- update development branch (`d80dd82`)
- updates in development (`2622d88`)


---


## Release - v2.5.32
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fix Traccar API token generation with session cookiejar support and real-time LTM status on first boot.

**Highlights:**
- Added cookiejar session persistence in Traccar authentication client, resolving HTTP 401 on token generation and enabling instant user management in Tracking Users.
- Eliminated container stops during token issuance for zero-downtime background provisioning.
- Dynamic auto-reconnect and instant database propagation across all WebSocket and REST services on initial install boot.

<!-- lang:pt -->
**Resumo:** Corre????o na gera????o de token do Traccar com suporte a cookiejar e status LTM em tempo real no primeiro boot.

**Destaques:**
- Adicionada persist??ncia de sess??o com cookiejar no cliente de autentica????o do Traccar, corrigindo o erro 401 na gera????o de token e liberando a gest??o de usu??rios em Usu??rios do Rastreamento.
- Eliminada a parada desnecess??ria do container durante a emiss??o de token, garantindo provisionamento em segundo plano sem interrup????es.
- Reconex??o autom??tica sob demanda e inje????o imediata do banco de dados em todos os servi??os WebSocket e REST ap??s a instala????o inicial.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.32 (`8206888`)
- update development branch (`95d549c`)
- updates in development (`9d6527e`)
- updates in development (`63cb0e3`)


---


## Release - v2.5.31
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Robust Traccar admin session validation and automatic UI refresh after backup restore.

**Highlights:**
- Fixed Traccar technical user authentication to directly validate administrator status via active session, preventing unwanted container restarts and ensuring instant token provisioning in Tracking Users.
- Enhanced database backup restore with isolated temporary files, detailed error capture, and automatic real-time reloading of Memory Content, Notes, and Analytics views.

<!-- lang:pt -->
**Resumo:** Valida????o robusta de sess??o admin no Traccar e atualiza????o autom??tica da interface ap??s restaura????o de backup.

**Destaques:**
- Corrigida a autentica????o do usu??rio t??cnico do Traccar para validar o privil??gio de administrador diretamente pela sess??o ativa, evitando reinicializa????es indevidas do container e garantindo provisionamento instant??neo do token em Usu??rios do Rastreamento.
- Aprimorada a restaura????o de backup do banco de dados com arquivos tempor??rios isolados, captura detalhada de erros e recarregamento autom??tico em tempo real das telas de Conte??do da Mem??ria, Anota????es e Anal??ticos.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.31 (`462f369`)
- update development branch (`d5b4d9f`)
- updates in fix/traccar-auth-and-backup-restore-reload (`6db7498`)
- updates in development (`6773018`)


---


## Release - v2.5.30
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Automatic on-demand Traccar token configuration and visual progress feedback for database restore.

**Highlights:**
- Added on-demand auto-configuration for Traccar access tokens, ensuring seamless GPS fleet and geofence tracking without manual token generation.
- Added visual progress bar, real-time stage indicators, and feedback messages during database backup restore across all supported languages.

<!-- lang:pt -->
**Resumo:** Configura????o autom??tica e sob demanda do token do Traccar e feedback visual de progresso na restaura????o de backup.

**Destaques:**
- Adicionada auto-configura????o sob demanda do token de acesso do Traccar, garantindo conex??o transparente para rastreamento de frotas e cercas sem necessidade de gera????o manual.
- Adicionada barra de progresso visual, indicadores de etapas em tempo real e mensagens de feedback na restaura????o de backup com suporte completo aos 8 idiomas.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.30 (`ed7b1fb`)
- update development branch (`efc796f`)
- updates in feat/backup-restore-feedback-progress (`ecc64a7`)
- updates in fix/traccar-auto-config-on-demand (`bdca283`)


---


## Release - v2.5.29
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Improved token authentication and WebSocket reconnection resilience in the first-launch setup modal.

**Highlights:**
- Filtered transient socket closure messages during intentional reconnections
- Added resilient 8-second verification polling for immediate WebSocket authentication feedback
- Real-time reactive status watcher in the token setup modal that transitions to success as soon as the connection is active
- Immediate access with OK Continue confirmation button

<!-- lang:pt -->
**Resumo:** Melhorias na autenticacao do token e resiliencia de reconexao WebSocket no modal de configuracao inicial.

**Destaques:**
- Filtragem de mensagens transitorias de fechamento de socket durante reconexoes intencionais
- Polling resiliente de 8 segundos para feedback imediato de autenticacao WebSocket
- Monitor reativo em tempo real no modal de token que alterna para sucesso assim que a conexao fica ativa
- Acesso imediato com botao de confirmacao OK Continuar

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.29 (`87648f0`)
- updates in fix/token-modal-verification-reconnect (`44a0546`)


---


## Release - v2.5.28
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed frontend script syntax to ensure smooth splash screen transition and synchronized background container provisioning with the main application window.

**Highlights:**
- Resolved JavaScript syntax errors in application initialization script
- Splash screen progress animation runs smoothly and transitions to the main window in 2-3 seconds
- Automatic Docker Desktop and container provisioning begins 3 seconds after the main window is rendered
- Live provisioning progress displayed reliably in the top banner and services tab

<!-- lang:pt -->
**Resumo:** Correcao na sintaxe dos scripts do frontend para garantir a transicao suave da splash screen e sincronizacao do provisionamento de containers com a abertura da janela principal.

**Destaques:**
- Resolvidos erros de sintaxe JavaScript no script de inicializacao do aplicativo
- Animacao de progresso da splash screen executa suavemente e faz a transicao para a janela principal em 2 a 3 segundos
- Auto-instalacao do Docker Desktop e provisionamento iniciam 3 segundos apos a janela principal ser renderizada
- Exibicao do progresso em tempo real no banner superior e na aba de servicos

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.28 (`61ca170`)
- updates in fix/appjs-syntax-and-provisioning-delay (`8183e2d`)


---


## Release - v2.5.27
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** This release synchronizes the automatic installation with the main window startup and adds an authentication setup modal for your AI-Bridge token.

**Highlights:**
- Smart provisioning startup that waits for the main application window to be fully visible before starting Docker or container downloads
- First-launch setup modal with step-by-step guidance to connect your AI-Brain account
- Elevated administrator execution for Docker Desktop installer on Windows
- Live real-time progress display across the global banner and services tab

<!-- lang:pt -->
**Resumo:** Esta versao sincroniza o inicio da auto-instalacao com a abertura da janela principal e adiciona o modal de configuracao e autenticacao do seu token AI-Bridge.

**Destaques:**
- Inicializacao inteligente do provisionamento que aguarda a janela principal estar 100% visivel antes de iniciar downloads do Docker ou containers
- Modal de primeiro acesso com instrucoes passo a passo para conectar sua conta AI-Brain
- Execucao com privilegios de administrador para o instalador do Docker Desktop no Windows
- Exibicao do progresso em tempo real no banner global e na aba de servicos

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.27 (`0a73b87`)
- updates in feature/provision-delayed-start (`0ec5c9e`)


---


## Release - v2.5.26
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** This update introduces an automatic setup and authentication modal for your AI-Bridge token, enhances Docker Desktop provisioning with administrator privileges on Windows, and optimizes the initial application startup.

**Highlights:**
- First-launch setup modal with step-by-step guidance to connect your AI-Brain account
- Seamless Docker Desktop background provisioning with native UAC elevation
- Instant main window display with non-blocking splash screen
- Added AI-Brain agents directly into the Sleep & Consolidation model selector
- Real-time connection feedback with categorized error handling and full 8-language i18n support

<!-- lang:pt -->
**Resumo:** Esta atualizacao introduz um modal automatico de configuracao e autenticacao do seu token AI-Bridge, aprimora o provisionamento do Docker Desktop com privilegios de administrador no Windows e otimiza a inicializacao da aplicacao.

**Destaques:**
- Modal de primeiro acesso com instrucoes passo a passo para conectar sua conta AI-Brain
- Provisionamento suave do Docker Desktop com elevacao UAC nativa
- Abertura instantanea da janela principal com splash screen nao bloqueante
- Adicao dos agentes do AI-Brain diretamente no seletor de modelos do Sono e Consolidacao
- Verificacao de conexao em tempo real com tratamento de erros por categoria e suporte a 8 idiomas

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.26 (`06a0e23`)
- updates in feature/token-setup-modal (`f85bc8f`)
- updates in development (`1966027`)
- add AI-Brain agents in sleep model selector with API and fallback inheritance (`7c6128f`)


---


## Release - v2.5.25
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added OpenRouter provider and 14 AI models to the Sleep Model (Nightly Memory Consolidation) settings with dynamic API key configuration.

**Highlights:**
- Direct support for OpenRouter API in the consolidation pipeline with 14 selectable models.
- Dedicated OpenRouter API Key input field in the Settings tab with dynamic toggle.
- Comprehensive multi-language support across all 8 supported UI languages.

<!-- lang:pt -->
**Resumo:** Adicionado o provedor OpenRouter e 14 modelos de IA nas configuracoes do Modelo do Sono (Consolidacao Noturna de Memoria) com chave de API dinamica.

**Destaques:**
- Suporte direto a API OpenRouter no pipeline de consolidacao com 14 modelos selecionaveis.
- Campo dedicado para Chave de API OpenRouter na aba Settings com exibicao dinamica.
- Suporte completo a internacionalizacao em todos os 8 idiomas da interface.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.25 (`28f270f`)
- add OpenRouter provider and models to sleep model consolidation in Settings (`714ccd3`)

#### 🐛 Correções
- remove unused import in memory_handlers.go (`696112d`)

#### 📚 Documentação
- update TODO.md with OpenRouter sleep model phase (`ed37298`)


---


## Release - v2.5.24
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Live streaming layer download progress for Docker container images and full standardization of backend messages to English.

**Highlights:**
- Real-time layer download percentage and status streaming for all container images (PostgreSQL, Ollama, WAHA, Traccar).
- Eliminated 0% stalling during image pulls with smooth, dynamic progress updates.
- 100% of Go backend installation messages, titles and logs standardized to official English.

<!-- lang:pt -->
**Resumo:** Progresso em tempo real do download de camadas das imagens dos containers Docker e padronizacao completa das mensagens do backend em ingles.

**Destaques:**
- Rastreamento din?mico de porcentagem e status do download de camadas de todas as imagens de containers (PostgreSQL, Ollama, WAHA, Traccar).
- Eliminado o congelamento em 0% durante o pull de imagens com atualizacoes continuas de progresso.
- 100% das mensagens, titulos e logs de instalacao do backend Go padronizados no ingles oficial.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.24 (`55a2246`)
- implement real-time streaming progress for container image pulls and standardize backend messages in English (`71f9d9c`)


---


## Release - v2.5.23
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Strict loopback binding for internal container ports (PostgreSQL, Ollama, WAHA) to enhance security and prevent external exposure.

**Highlights:**
- Internal container ports now strictly bind to 127.0.0.1, blocking any external network or LAN access.
- Only the Traccar GPS tracking platform retains public/LAN exposure as configured by the user.

<!-- lang:pt -->
**Resumo:** Vinculacao estrita em loopback (127.0.0.1) para as portas dos containers internos (PostgreSQL, Ollama, WAHA), reforcando a seguranca e bloqueando exposicao externa.

**Destaques:**
- Portas dos containers internos agora vinculadas exclusivamente em 127.0.0.1, bloqueando acesso externo ou via LAN.
- Apenas a plataforma Traccar GPS mantem portas acessiveis na rede conforme definido pelo usuario.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.23 (`9b6a8a1`)
- bind internal container ports (postgres, ollama, waha) strictly to 127.0.0.1 (`dc054cf`)


---


## Release - v2.5.22
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Standardized progress banner, splash loader and status texts to English with full 8-language i18n support.

**Highlights:**
- All HTML templates, splash loaders and live progress banners set to official English defaults.
- Added comprehensive i18n keys and translations for the top progress banner across all 8 supported languages.

<!-- lang:pt -->
**Resumo:** Padronizacao do banner de progresso, tela de splash e textos de status em ingles com suporte completo aos 8 idiomas no i18n.

**Destaques:**
- Todos os templates HTML, telas de splash e banners de progresso padronizados no ingles oficial.
- Adicionadas chaves e traducoes completas do banner global de progresso para os 8 idiomas suportados.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.22 (`9f0686d`)
- standardize progress banner and splash in English with full 8-language translations (`f899862`)


---


## Release - v2.5.21
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Live top global progress banner with real-time percentage, download speed/size tracking, and step-by-step installation status.

**Highlights:**
- Top global progress banner showing the exact service, step number, percentage and status message.
- Live download size tracking (MB downloaded vs total MB) during Docker Desktop setup.
- Automatic transition with success notification and auto-refresh upon completion.

<!-- lang:pt -->
**Resumo:** Banner global de progresso no topo com porcentagem em tempo real, rastreamento de tamanho de download e status detalhado por etapas.

**Destaques:**
- Banner global de progresso no topo exibindo o servico exato, numero da etapa, porcentagem e mensagem de status.
- Rastreamento de tamanho baixado em tempo real (MBs baixados vs total) durante o download do Docker Desktop.
- Transicao automatica com notificacao de sucesso e atualizacao instantanea dos cards ao concluir.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.21 (`603612b`)
- add persistent top global progress banner with live percentage and step tracking (`67c7260`)
- add real-time download and installation progress reporting for docker and services (`88b6544`)


---


## Release - v2.5.20
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Resilient missing container auto-installer on boot, silent official Docker Desktop setup and UI status update to Installing.

**Highlights:**
- Individual check and auto-provisioning for any missing container on launch.
- Enforced 100% silent direct installer for Docker Desktop to avoid console freezes.
- Service card status updated to Installing with manual install button removed.

<!-- lang:pt -->
**Resumo:** Auto-instalador resiliente de containers ausentes no boot, instalador silencioso do Docker Desktop e status da interface atualizado para Instalando.

**Destaques:**
- Verificacao e provisionamento automatico individual para qualquer container ausente na inicializacao.
- Instalador oficial do Docker Desktop 100% silencioso para evitar janelas de console congeladas.
- Status dos cards de servicos atualizado para Instalando e botao manual de instalacao removido.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.20 (`eb0532e`)
- replace Need Install with Installing and remove manual install action button (`217d397`)
- install missing containers individually on boot and enforce silent direct installer for docker desktop (`eebd8ba`)


---


## Release - v2.5.19
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Automated and resilient Docker Desktop and container installation on first launch with real-time step progress.

**Highlights:**
- Automated Docker Desktop download and silent setup fallback with WSL2 backend.
- Resilient container provisioning with extended timeouts and automatic retries.
- Guided splash screen and status modals with real-time step-by-step progress tracking.

<!-- lang:pt -->
**Resumo:** Instalacao automatizada e resiliente do Docker Desktop e dos containers de servicos no primeiro boot, com acompanhamento de etapas em tempo real.

**Destaques:**
- Download direto e instalacao silenciosa do Docker Desktop oficial com backend WSL2.
- Provisionamento resiliente de containers com timeouts estendidos e retries automaticos.
- Splash screen e paineis de status guiados com indicador de etapas e barra de progresso em tempo real.

### 📋 Changelog da Versão

**Total:** 7 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.19 (`1e4ce7d`)
- update setup.iss and install-ai-bridge.bat for automated onboarding (`d7a5e1c`)
- add real installation progress tracking by steps and dynamic splash screen (`a253fff`)
- add direct download fallback, extended engine wait and resilient InstallAll with retries (`eb3775c`)
- bridge tools expoem campo icon no catalogo mcp_list_tools — painel passa a usar o mesmo padrao de icones das ferramentas nativas (`6847f71`)

#### 📚 Documentação
- finalize TODO.md for auto-install-services feature (`aae9ff2`)

#### 📝 Geral
- remove campo Icon do MCPTool e literais de icone (icones agora sao responsabilidade do painel ai-brain) (`7daee9c`)


---


## Release - v2.5.18
### 📣 Apresentação da Atualização

<!-- lang:en --> **Summary:** v2.5.18 - Local Tools reorganization and Notes Content agent-name fix.
**Highlights:** Docker cards now live under Infrastructure & Docker (Host Tools group removed); tool names renamed to Docker - Create/Delete Container and Docker; Notes Content tab shows the agent name instead of the raw ID. <!-- lang:pt --> **Resumo:** v2.5.18 - Reorganização das Local Tools e correção do nome do agente no Notes Content. **Destaques:** cards Docker agora em Infrastructure & Docker (grupo Host Tools removido); nomes renomeados para Docker - Create/Delete Container e Docker; aba Notes Content exibe o nome do agente em vez do ID bruto.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.18 (`9586b2f`)
- reorganiza Local Tools - docker_delete entra em Infrastructure & Docker, grupo Host Tools eliminado (fallback default agora Infrastructure & Docker); cards renomeados: Docker - Create/Delete Container e Docker (ops centralizada) (`a44258b`)

#### 🐛 Correções
- Notes Content mostra nome do agente em vez do ID bruto - reusa o mapa id->nome ja carregado pelo Memory Content (window._agentNameMap) e garante carregamento antes de renderizar a tabela; fallback mantem o ID se o agente nao existir mais (`37a05bf`)


---


## Release - v2.5.17
### 📣 Apresentação da Atualização

<!-- lang:en --> **Summary:** Full per-agent privacy for the two local memory tools — Notes and Keep in Mind now deny any operation without a canonical agent_id and scope every database query strictly to the calling agent (no shared/global buckets).
**Highlights:** notes MCP executor rejects empty agent_id with clear error; WebSocket handlers enforce per-agent isolation on all notes routes; keep_in_mind fully isolated per agent; tool descriptions document the privacy model.
<!-- lang:pt --> **Resumo:** Privacidade total por agente nas duas tools de memória local — Notes e Keep in Mind agora negam qualquer operação sem agent_id canônico e restringem todas as queries do banco ao agente chamador (sem bucket global).
**Destaques:** executor MCP do notes rejeita agent_id vazio com erro claro; handlers WebSocket aplicam isolamento por agente em todas as rotas de notas; keep_in_mind totalmente isolado por agente; descrições das tools documentam o modelo de privacidade.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.17 (`e2a9146`)

#### 🐛 Correções
- isolamento total por agente nas anotacoes - handlers WS negam agent_id vazio (sem bucket global) e queries do banco ficam estritas ao agente (list/get/search/delete/update/days/categories/most_accessed) (`0cfc682`)
- isolamento total por agente - sem agent_id canonico a operacao e negada (sem bucket global); descricao da tool documenta a privacidade (`549c183`)


---


## Release - v2.5.16
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Skills priority, Keep in Mind temporary self-notes, agent container sandbox toggle and a brand new Local Tools card UI.

**Highlights:**
- Skills tool: up to 5 priority skills injected first in the [SKILLS] prompt block.
- New keep_in_mind MCP tool: short temporary self-notes (max 5 active, 500 chars, up to 24h) injected into your system prompt and auto-deleted on expiry.
- Settings > Agente Container renamed with a Sandbox Mode checkbox (ON by default). Unchecked lets agents create containers with full host/network access.
- Local Tools tab redesigned as colorful grouped cards (Infrastructure, Browser, Vault, Knowledge, Social, IoT).
<!-- lang:pt -->
**Resumo:** Prioridade de skills, anotacoes temporarias Keep in Mind, toggle de sandbox para containers de agentes e visual novo em cards na aba Local Tools.

**Destaques:**
- Ferramenta skills: ate 5 skills prioritarias injetadas primeiro no bloco [SKILLS] do prompt.
- Nova ferramenta MCP keep_in_mind: anotacoes temporarias (max 5 ativas, 500 caracteres, ate 24h) injetadas no system prompt e apagadas automaticamente ao expirar.
- Settings > Agente Container renomeado com checkbox Sandbox Mode (marcada por padrao). Desmarcada permite containers com acesso livre a maquina e rede.
- Aba Local Tools redesenhada em cards coloridos agrupados por tipo (Infraestrutura, Navegador, Cofre, Conhecimento, Social, IoT).

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.16 (`d3d16d5`)
- sandbox toggle p/ containers de agentes (Settings > Agente Container, default ON) + Local Tools em cards coloridos agrupados por tipo (`8088f5d`)
- ferramenta MCP keep_in_mind (Mantenha em mente) - anotacoes temporarias por agente (max 5 ativas, 500 chars, 24h), bloco [KEEP IN MIND] no system prompt com push em tempo real e purge automatico na expiracao (`3887234`)
- campo priority global nas skills (max 5) - prioridades primeiro na injecao do system prompt + acao set_priority na ferramenta MCP + rota WS skills_toggle_priority (`3e75bbc`)


---


## Release - v2.5.15
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Skills are now simpler and smarter: active skills go straight into the agent system prompt, and agents can always see, read and enable/disable any skill.

**Highlights:**
- Active skills (checkbox on) are injected into the agent's system prompt automatically
- The skills list now shows ALL skills - active and inactive - with pagination, so nothing disappears
- Agents can enable or disable skills for themselves at any time

<!-- lang:pt -->
**Resumo:** As Skills ficaram mais simples e inteligentes: skills ativas entram direto no system prompt do agente, e o agente sempre consegue ver, ler e ativar/desativar qualquer skill.

**Destaques:**
- Skills ativas (checkbox marcada) são injetadas automaticamente no system prompt do agente
- A lista de skills agora mostra TODAS - ativas e inativas - com paginação, então nenhuma desaparece
- O agente pode ativar ou desativar skills para si mesmo a qualquer momento

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.15 (`85b0665`)


---


## Release - v2.5.14
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Skills are now simpler and smarter: active skills go straight into the agent system prompt, and agents can always see, read and enable/disable any skill.

**Highlights:**
- Active skills (checkbox on) are injected into the agent's system prompt automatically
- The skills list now shows ALL skills - active and inactive - with pagination, so nothing disappears
- Agents can enable or disable skills for themselves at any time

<!-- lang:pt -->
**Resumo:** As Skills ficaram mais simples e inteligentes: skills ativas entram direto no system prompt do agente, e o agente sempre consegue ver, ler e ativar/desativar qualquer skill.

**Destaques:**
- Skills ativas (checkbox marcada) são injetadas automaticamente no system prompt do agente
- A lista de skills agora mostra TODAS - ativas e inativas - com paginação, então nenhuma desaparece
- O agente pode ativar ou desativar skills para si mesmo a qualquer momento

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.14 (`016bc1d`)
- skills no SYSTEM PROMPT via push skills_changed (checkbox = injeta), list MCP mostra todas com paginacao, remocao do match por diretorio (`7110566`)
- skills injection v2 - subdirectory path matching, lean block (5 cap, fixed alphabetical), access counter and 60s cache with instant invalidation (`85dc282`)

#### 🐛 Correções
- agente sempre ve todas as skills em list/get (sem gate por checkbox) - checkbox controla apenas a injecao no system prompt (`41ad2a8`)

#### 📚 Documentação
- remove marcadores de conflito de merge commitados em AGENTS.md/GEMINI.md e corrige bullets do mapa de skills (`8c1b41d`)


---


## Release - v2.5.13
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** [SKILLS] context injection: whenever the docker tool is used and its parameters reference a folder linked to an ACTIVE skill (checkbox checked in the panel), a [SKILLS] block is injected into the prompt with the related project and the list of skills (id, title, truncated text) plus an instruction to consult the full skills via the MCP skills tool.

**Highlights:**
- Docker tool calls now auto-inject a [SKILLS] context block when working in a skill-related directory
- Only skills enabled for the calling agent (checkbox in panel) are considered
- New unit tests for folder matching and block formatting

<!-- lang:pt -->
**Resumo:** Injeção de contexto [SKILLS]: sempre que a ferramenta docker for usada e os parâmetros referenciarem uma pasta ligada a uma skill ATIVA (checkbox marcada no painel), um bloco [SKILLS] é injetado no prompt com o projeto relacionado e a lista de skills (id, título e texto truncado) + instrução para consultar as skills completas via a ferramenta MCP skills.

**Destaques:**
- Chamadas da ferramenta docker agora injetam automaticamente o bloco [SKILLS] ao trabalhar em diretório relacionado a uma skill
- Somente skills habilitadas para o agente chamador (checkbox no painel) são consideradas
- Novos testes unitários para o match de pastas e formatação do bloco

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.13 (`d88b7b8`)
- injecao [SKILLS] no prompt quando a ferramenta docker e usada em pasta de skill ativa (checkbox no painel) (`e8ac283`)
- update development branch (`5ffdf4f`)


---


## Release - v2.5.12
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Skills are here: create reusable instruction cards and enable them per agent.

**Highlights:**
- New skills tool lets your agents store and consult detailed how-to instructions
- Enable or disable each skill for every agent with a simple checkbox

<!-- lang:pt -->
**Resumo:** Chegaram as skills: crie cartoes de instrucao reutilizaveis e libere-os por agente.

**Destaques:**
- A nova ferramenta skills permite que seus agentes guardem e consultem instrucoes detalhadas
- Ative ou desative cada skill para cada agente com uma simples checkbox

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.12 (`c02fadb`)
- ferramenta MCP skills + tabela skills no PostgreSQL local e acoes WebSocket de CRUD para o painel (`6f498fc`)


---


## Release - v2.5.11
### 📣 Apresentação da Atualização

**Fix: salvar permissões no Tracking Users**

- Corrigido o problema que impedia de salvar (marcar/desmarcar) permissões de dispositivos e cercas no Tracking Users — o Traccar ignorava silenciosamente as alterações quando o userId não vinha primeiro no pedido; agora o envio é feito no formato correto e as permissões salvam de verdade.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.11 (`0f23fd3`)

#### 🐛 Correções
- corpo de POST/DELETE de permissoes com userId PRIMEIRO no JSON — o Traccar 6.15.x ignora silenciosamente (204 sem efeito) quando userId nao vem primeiro; map do Go serializa em ordem alfabetica (deviceId/geofenceId antes de userId) → save de permissoes nunca persistia. Agora usa struct traccarPermissionBody (ordem de declaracao preservada) (`8cca8c3`)


---


## Release - v2.5.10
### 📣 Apresentação da Atualização

**Fix: salvar permissões no Tracking Users**

- Corrigido o problema que impedia de salvar (marcar/desmarcar) permissões de dispositivos e cercas no Tracking Users — o Traccar ignorava silenciosamente as alterações quando o userId não vinha primeiro no pedido; agora o envio é feito no formato correto e as permissões salvam de verdade.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.10 (`de2ed85`)


---


## Release - v2.5.9
### 📣 Apresentação da Atualização

feat(traccar): v2.5.9 (PATCH) — novas instalações garantidas: o fluxo de instalação/configuração (EnsureTraccarToken) agora chama EnsureTraccarPermissionTables após criar o usuário técnico, criando as 8 tabelas de permissão (tc_device_user, tc_geofence_user, tc_group_user, tc_calendar_user + variantes invertidas) com CREATE TABLE IF NOT EXISTS. Instalações novas já criam o schema completo no 1º boot do Traccar (banco do zero); este reforço garante que mesmo bancos antigos/incompletos tenham as tabelas de permissão desde o primeiro setup — sem erro no Tracking Users. Auto-reparo on-demand (v2.5.8) permanece como rede de segurança final.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.9 (`1e8bcb7`)
- garante tabelas de permissao no fluxo de instalacao (novas instalacoes) (`15709d1`)


---


## Release - v2.5.8
### 📣 Apresentação da Atualização

fix(traccar): v2.5.8 (PATCH) — o auto-reparo de schema agora cria TODAS as tabelas de permissão do Traccar (8 tabelas), incluindo tc_device_user que faltava — o DELETE de permissão de dispositivo falhava com 'Table TC_DEVICE_USER not found' ao desmarcar um device no Tracking Users (mesmo padrão do tc_geofence_user). EnsureTraccarPermissionTables cria nos dois formatos (tc_<entidade>_user e tc_user_<entidade>): device_user, geofence_user, group_user, calendar_user, user_device, user_geofence, user_group, user_calendar. Ao detectar o erro de tabela ausente, o app para o Traccar, cria o que falta e repete a operação automaticamente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.8 (`4953f95`)

#### 🐛 Correções
- auto-reparo agora cria tambem tc_device_user e variantes de permissao (`a2324fa`)


---


## Release - v2.5.7
### 📣 Apresentação da Atualização

fix(traccar): v2.5.7 (PATCH) — conexão com o Traccar normalizada para 127.0.0.1 (IPv4 fixo) em vez de localhost. No Windows, 'localhost' pode resolver apenas para IPv6 (::1) — quando o Docker publica o Traccar somente em IPv4, o app falha com 'dial tcp [::1]:27793: connectex: conexao recusada' mesmo com o container no ar (erro visto no Tracking Users ao salvar permissões de devices/cercas). Corrigido em 4 pontos: traccarDo normaliza http(s)://localhost -> http(s)://127.0.0.1 (cobre configs antigas já salvas), montagem da TraccarURL usa 127.0.0.1, default do config usa 127.0.0.1 e traccarBaseURL idem.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.7 (`c5cb3ab`)

#### 🐛 Correções
- normaliza URL de conexao para 127.0.0.1 (evita falha de IPv6 no Windows) (`99022b8`)


---


## Release - v2.5.6
### 📣 Apresentação da Atualização

fix(tracking-users): v2.5.6 (PATCH) — leitura correta das permissões de cercas no form: a API de permissões do Traccar usa o PAR de filtros na query para decidir qual tabela consultar (?userId=X&deviceId=0 → tc_device_user; ?userId=X&geofenceId=0 → tc_geofence_user). O código usava os 3 filtros juntos, que retorna SOMENTE dispositivos — as cercas salvas eram criadas (POST 204) mas nunca apareciam marcadas ao reabrir o form (GET não retornava GEOFENCEID), parecendo 'não salvou'. GetTraccarUserPermissions e SetTraccarUserPermissions agora fazem duas chamadas separadas (devices + geofences) e o diff de cercas adiciona/remove corretamente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.6 (`4acf13d`)

#### 🐛 Correções
- permissões de cercas agora são lidas corretamente (2 chamadas: devices + geofences) (`489b405`)


---


## Release - v2.5.5
### 📣 Apresentação da Atualização

feat(traccar): v2.5.5 (PATCH) — auto-reparo de schema do Traccar: quando uma operacao de permissao (ex: salvar cercas no Tracking Users) falha com 'Table ... not found', o app detecta, para o container do Traccar (lock do H2), cria as tabelas de permissao ausentes (tc_geofence_user, tc_group_user, tc_calendar_user — CREATE TABLE IF NOT EXISTS via H2 Shell), sobe o servico e repete a operacao automaticamente. Instalacoes novas ja criam o schema completo no 1o boot; bancos antigos/atualizados se auto-corrigem na 1a tentativa, sem acao manual. Novo traccar_repair.go + docker.EnsureTraccarPermissionTables + wrapper traccarDoAuto em todas as chamadas de traccar_users.go.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.5 (`93c428e`)
- auto-reparo de schema — cria tabelas de permissao ausentes no H2 (ex: tc_geofence_user) (`43ff718`)


---


## Release - v2.5.4
### 📣 Apresentação da Atualização

fix(tracking-users): v2.5.4 (PATCH) — o form de permissões do Tracking Users agora lista TODAS as cercas e dispositivos do Traccar usando ?all=true (o parâmetro all do Traccar é booleano JAX-RS: só 'true' é aceito; '?all=1' era interpretado como false e continuava filtrando por permissão — por isso a lista de geofences continuava vazia sem vínculo prévio). Validado sem permissão: GET /api/geofences?all=true retorna Casa + Sylvio Casa e GET /api/devices?all=true retorna os 3 devices.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.4 (`47c01e9`)

#### 🐛 Correções
- corrige listagem de cercas/devices no form de permissoes — ?all=true em vez de ?all=1 (`a89f487`)


---


## Release - v2.5.3
### 📣 Apresentação da Atualização

fix(tracking-users): v2.5.3 (PATCH) — o form de permissões do Tracking Users agora lista TODAS as cercas e dispositivos do Traccar para o admin marcar e salvar (GET /api/geofences?all=1 e /api/devices?all=1). Antes usava a listagem sem filtro, que retorna apenas os objetos vinculados ao token do usuário técnico do agente — fazendo a lista de cercas vir vazia quando não havia vínculo prévio e impedindo o admin de associar cercas a qualquer usuário/agente pelo painel.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.3 (`1a1a66a`)

#### 🐛 Correções
- lista de cercas/devices no form de permissoes agora usa ?all=1 (admin ve tudo) (`636cfeb`)


---


## Release - v2.5.2
### 📣 Apresentação da Atualização

fix(tracking-users): v2.5.2 (PATCH) — corrige a integração com a API de permissões do Traccar: 1) GET /api/permissions agora usa query com 2+ pares (userId=X&deviceId=0&geofenceId=0) porque a versão atual do Traccar quebra com query de 1 par ou 'all=true' (ArrayIndexOutOfBoundsException no PermissionsResource.get); 2) POST e DELETE de permissões agora enviam a entidade no CORPO da requisição JSON (DELETE com query retornava 400 entity is null); 3) parse do retorno case-insensitive (chaves MAIÚSCULAS USERID/DEVICEID/GEOFENCEID que esta versão retorna). Validado com testes diretos na API (criar/listar/adicionar/remover permissão: 200/204).

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.2 (`a61af4f`)

#### 🐛 Correções
- corrige API de permissoes do Traccar (erro ArrayIndexOutOfBounds ao salvar) (`771b786`)


---


## Release - v2.5.1
### 📣 Apresentação da Atualização

fix(tracking): v2.5.1 (PATCH) — 1) CLI publish simples agora roda push da development no final, apos merge com a development e exclusao da branch temporaria (retry pull --rebase se o push falhar); 2) corrigido erro 'Bad control character in string literal in JSON' ao salvar permissoes do Tracking Users (mensagens de erro do backend agora com escape JSON correto via json.Marshal); 3) Smart Alerts movido para dentro do accordion Tracking como subsecao — accordion Smart Alerts removido e bug de layout com Model Sleep corrigido; 4) titulos do accordion e da aba Tracking agora apenas 'Tracking'.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.1 (`fb00c1c`)

#### 🐛 Correções
- correcoes pos-v2.5.0 — JSON de erro, Smart Alerts no accordion Tracking, titulos e CLI publish simples (`0fcd618`)


---


## Release - v2.5.0
### 📣 Apresentação da Atualização

feat(tracking-users): v2.5.0 (MINOR) — nova aba de gestão de usuários do Traccar no painel (listar, criar, editar, excluir, senha, papel, permissões de dispositivos/cercas) + Smart Alerts movido para accordion dentro dos Settings. Regras multi-tenant genéricas: usuário técnico @local.traccar protegido com badge AGENT (só permissões editáveis), ninguém pode excluir/rebaixar a si mesmo, nunca remove o último admin. Correção do deploy: commit 7204263 (código real do tracking-users) agora incluído no release. i18n pt-BR e en.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.5.0 (`702959e`)
- gestao de usuarios do Traccar no painel + Smart Alerts movido para Settings (`7204263`)


---


## Release - v2.4.0
### 📣 Apresentação da Atualização

feat(tracking-users): v2.4.0 (MINOR) — nova aba de gestão de usuários do Traccar no painel (listar, criar, editar, excluir, senha, papel, permissões de dispositivos/cercas) + Smart Alerts movido para accordion dentro dos Settings. Regras multi-tenant genéricas: usuário técnico @local.traccar protegido com badge AGENT (só permissões editáveis), ninguém pode excluir/rebaixar a si mesmo, nunca remove o último admin. Corrigido bug do fluxo de publish que não incluía as últimas modificações na 1ª publicação. i18n pt-BR e en.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.4.0 (`31243c4`)


---


## Release - v2.3.303
### 📣 Apresentação da Atualização

feat(tracking-users): nova aba de gestão de usuários do Traccar no painel (listar, criar, editar, excluir, senha, papel, permissões de dispositivos/cercas) + Smart Alerts movido para accordion dentro dos Settings. Regras multi-tenant genéricas: usuário técnico @local.traccar protegido com badge AGENT (só permissões editáveis), ninguém pode excluir/rebaixar a si mesmo, nunca remove o último admin. i18n pt-BR e en.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.303 (`efe9a30`)


---


## Release - v2.3.302
### 📣 Apresentação da Atualização

fix(kv-cache): v2.3.301 — ListTools() do AI-BRIDGE agora ordena as tools MCP por ID (map iteration em Go era aleatoria e quebrava o prefix cache entre turnos). Conversa simples deve sair de 2% para 90%+ de hit rate.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.302 (`d92cde8`)


---


## Release - v2.3.301
### 📣 Apresentação da Atualização

fix(kv-cache): v2.3.301 — ListTools() do AI-BRIDGE agora ordena as tools MCP por ID (map iteration em Go era aleatoria e quebrava o prefix cache entre turnos). Conversa simples deve sair de 2% para 90%+ de hit rate.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.301 (`8dd1b58`)

#### 🐛 Correções
- ordena lista de tools MCP (map iteration em Go é aleatória) (`2c4b1d9`)


---


## Release - v2.3.300
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed the "Update permissions" button messages (now fully translated via i18n in all 8 languages) and the root cause of the empty agent dropdown: the AI-BRAIN global auth middleware was blocking the new /api/bridge/agents endpoint (it required a panel session before the endpoint could validate the bridge token).

**Highlights:**
- Button feedback now uses i18n keys (traccarPermsUpdating/Ok/Error) with English fallback
- AI-BRAIN middleware exception for /api/bridge/* (commit 0319f4b)
- Dropdown now lists the owner agents once both sides are updated

<!-- lang:pt -->
**Resumo:** Corrigidas as mensagens do botão "Atualizar permissões" (agora totalmente traduzidas via i18n nos 8 idiomas) e a causa raiz da caixa seletora vazia: o middleware global de autenticação do AI-BRAIN barrava o endpoint /api/bridge/agents (exigia sessão do painel antes do endpoint validar o token do bridge).

**Destaques:**
- Feedback do botão usa chaves i18n (traccarPermsUpdating/Ok/Error) com fallback em inglês
- Exceção no middleware do AI-BRAIN para /api/bridge/* (commit 0319f4b)
- Caixa seletora lista os agentes do dono após atualizar os dois lados

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.300 (`796f986`)

#### 🐛 Correções
- mensagens do botao Atualizar permissoes traduzidas (i18n) (`ad8976e`)


---


## Release - v2.3.299
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** The "target bot/agent ID" field in the Smart Alerts tab is now a dropdown listing the user's agents (loaded from AI-BRAIN) — the user picks the agent by name, no ID needed.

**Highlights:**
- Dropdown with the owner's agents (GET /api/bridge/agents, authenticated with the bridge token)
- Pick by agent name; saved value is preserved
- Labels/hints updated in all 8 languages

<!-- lang:pt -->
**Resumo:** O campo "bot alvo / agent ID" da aba Smart Alerts agora é uma caixa seletora com os agentes do usuário (carregados do AI-BRAIN) — o usuário escolhe o agente pelo nome, sem precisar saber o ID.

**Destaques:**
- Caixa seletora com os agentes do dono (GET /api/bridge/agents, autenticado com o token do bridge)
- Escolha pelo nome; valor salvo é preservado
- Labels/dicas atualizados nos 8 idiomas

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.299 (`613c0a3`)
- caixa seletora de bot alvo na aba Smart Alerts (lista os agentes do usuario) (`5f1db7d`)


---


## Release - v2.3.298
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed the "Update agent permissions" button error on existing installs: the Traccar technical password is now auto-generated and persisted when missing (self-healing), and new installs already include it in the .env template.

**Highlights:**
- New ensureTraccarTechPassword helper: generates + saves the technical password on demand
- Repair button, token renewer and installer no longer fail with "missing technical password"
- .env template now includes TRACCAR_TECH_PASSWORD for new installs

<!-- lang:pt -->
**Resumo:** Corrigido o erro do botão "Atualizar permissões do agente" em instalações existentes: a senha técnica do Traccar agora é gerada e persistida automaticamente quando ausente (auto-cura), e novas instalações já nascem com ela no template do .env.

**Destaques:**
- Novo helper ensureTraccarTechPassword: gera e salva a senha técnica sob demanda
- Botão de reparo, renovador de token e instalador não falham mais com "senha técnica ausente"
- Template do .env agora inclui TRACCAR_TECH_PASSWORD para instalações novas

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.298 (`f07e9ac`)

#### 🐛 Correções
- auto-cura da senha tecnica no .env (botao Atualizar permissoes) (`f5806c8`)


---


## Release - v2.3.297
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added an "Update agent permissions" button to the Smart Alerts tab: it immediately links ALL Traccar devices to the agent technical user (admin + device links), so newly added devices become visible to the agent without waiting for the 6h cycle.

**Highlights:**
- New button on the Smart Alerts tab with progress/result feedback
- One click: guarantees the agent technical user is admin and linked to every Traccar device
- Complements the automatic repair on boot/6h (v2.3.296)

<!-- lang:pt -->
**Resumo:** Adicionado o botão "Atualizar permissões do agente" na aba Smart Alerts: ele associa na hora TODOS os dispositivos do Traccar ao usuário técnico do agente (admin + vínculos), para que devices adicionados depois fiquem visíveis ao agente sem esperar o ciclo de 6h.

**Destaques:**
- Novo botão na aba Smart Alerts com feedback de progresso e resultado
- Um clique: garante o admin do usuário técnico e o vínculo com todos os dispositivos do Traccar
- Complementa o reparo automático no boot/6h (v2.3.296)

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.297 (`e103a00`)
- botao 'Atualizar permissões' na aba Smart Alerts (`5a04799`)


---


## Release - v2.3.296
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed the agent not seeing devices added after the initial setup: the Traccar technical user is now guaranteed to be administrator and linked to ALL devices, with automatic repair on boot and every 6h.

**Highlights:**
- Auto-repair: technical user admin flag + device links are enforced on boot and every 6h (independent of token validity)
- Any device added by the client after setup becomes visible to the agent automatically
- New EnsureTraccarTechnicalAccess routine in the token renewer cycle

<!-- lang:pt -->
**Resumo:** Corrigido o agente não enxergar dispositivos adicionados depois do setup inicial: o usuário técnico do Traccar agora é garantido como administrador e vinculado a TODOS os dispositivos, com reparo automático no boot e a cada 6h.

**Destaques:**
- Auto-reparo: admin do usuário técnico + vínculos de devices reforçados no boot e a cada 6h (independente da validade do token)
- Qualquer dispositivo adicionado pelo cliente após o setup fica visível ao agente automaticamente
- Nova rotina EnsureTraccarTechnicalAccess no ciclo do renovador de token

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.296 (`a53f598`)

#### 🐛 Correções
- garante admin e vinculo do usuario tecnico com devices novos (`e52df58`)


---


## Release - v2.3.295
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Agents can now query the Smart Alerts configuration (read-only): enabled status, active event types, response channel, target bot, destination chat and rules. Activation and event rules remain under user control in the Smart Alerts tab.

**Highlights:**
- New MCP action traccar get_alert_config (read-only consultation)
- The agent can inform the user about alert status on request (e.g. "are the alerts on? who receives them?")
- User keeps full control: only the Smart Alerts tab can enable/disable and define what triggers

<!-- lang:pt -->
**Resumo:** Os agentes agora podem consultar a configuração dos Alertas Inteligentes (somente leitura): se está ativado, tipos de evento ligados, canal de resposta, bot alvo, chat de destino e regras. Ativar/desativar e definir o que dispara continuam sob controle do usuário na aba Smart Alerts.

**Destaques:**
- Nova ação MCP traccar get_alert_config (consulta read-only)
- O agente informa o status dos alertas quando o usuário perguntar (ex: "os alertas estão ligados? pra quem vai?")
- Usuário mantém o controle total: só a aba Smart Alerts ativa/desativa e define o que dispara

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.295 (`1f979c1`)
- acao MCP get_alert_config (consulta read-only do status dos Smart Alerts) (`ed48192`)


---


## Release - v2.3.294
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Smart Alerts is now its own menu tab: the Tracking tab shows only the live map, and all Traccar event configuration (event types, response channel, target bot, rules) moved to the new "Smart Alerts" tab.

**Highlights:**
- New "Smart Alerts" tab in the menu with the full alert configuration
- Tracking tab is now map-only (cleaner and faster)
- i18n updated in all 8 languages

<!-- lang:pt -->
**Resumo:** Os Alertas Inteligentes agora têm aba própria no menu: a aba Rastreamento ficou só com o mapa ao vivo, e toda a configuração de eventos do Traccar (tipos de evento, canal de resposta, bot alvo, regras) foi para a nova aba "Smart Alerts".

**Destaques:**
- Nova aba "Smart Alerts" no menu com toda a configuração de alertas
- Aba Rastreamento agora só com o mapa (mais limpa e leve)
- i18n atualizado nos 8 idiomas

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.294 (`5a5debc`)
- aba Smart Alerts propria no menu; Tracking fica so com o mapa (`024cbaf`)


---


## Release - v2.3.293
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Fixed the Tracking tab so the map is always visible (Smart Alerts panel now scrolls within a max height) and made Traccar event delivery fully automatic: enabling Smart Alerts ensures the webhook notification exists on any installation — no manual setup.

**Highlights:**
- Tracking tab: map no longer disappears; Smart Alerts panel is height-limited and scrollable
- Enabling Smart Alerts automatically creates the Traccar webhook notification (idempotent) pointing to the local AI-Bridge receiver — works on any machine/installation
- Self-provisioning: Traccar service, technical user and Access Token are auto-created on first boot; the event pipeline (webhook) is now auto-wired too

<!-- lang:pt -->
**Resumo:** Corrigida a aba Rastreamento para o mapa ficar sempre visível (painel de Alertas Inteligentes agora rola dentro de altura máxima) e tornada automática a entrega de eventos do Traccar: ativar os Alertas Inteligentes garante a notificação webhook em qualquer instalação — sem configuração manual.

**Destaques:**
- Aba Rastreamento: o mapa não some mais; painel de alertas com altura limitada e rolagem interna
- Ativar alertas cria automaticamente a notificação webhook do Traccar (idempotente) apontando para o receptor local do AI-Bridge — funciona em qualquer máquina/instalação
- Auto-provisionamento: serviço Traccar, usuário técnico e Access Token já eram criados no 1º boot; agora o elo de eventos (webhook) também é automático

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.293 (`5665099`)

#### 🐛 Correções
- mapa da aba Tracking sempre visivel + notificacao webhook automatica (`894a0b7`)


---


## Release - v2.3.292
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 6 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.292 (`2a53fa7`)
- update development branch (`5f0f2c8`)
- alertas inteligentes na aba Tracking + sync de config com o AI-Brain (Fase 4) (`40e7564`)
- webhook local do Traccar + repasse via WebSocket (Fase 2) (`1c8060b`)
- tool traccar com gestao de notificacoes webhook (Fase 1) (`86d4658`)

#### 🐛 Correções
- garantir git pull na branch development antes de compilar (build --direct) (`fd189ae`)


---


## Release - v2.3.291
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.291 (`3ea113f`)

#### 🐛 Correções
- v2.3.290 — wrap do mapa com width auto (width:100% + margens fazia o painel estourar 12px pra fora da aba, cortando a borda arredondada direita pelo overflow do tab); iframe volta a 100% preenchendo o box arredondado (overflow hidden + border-radius clipam o mapa). Elimina o vao de 48px criado na v2.3.289. (`eeb100e`)


---


## Release - v2.3.290
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.290 (`da815f8`)


---


## Release - v2.3.289
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.289 (`4bcb829`)

#### 🐛 Correções
- reduzir largura horizontal do IFRAME (width calc(100% - 48px)) - iframe estava estourando ~110% pra direita, comendo a borda arredondada; margem do wrap volta a 12px simetrica (`a486b74`)


---


## Release - v2.3.288
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.288 (`c266c66`)

#### 🐛 Correções
- mais respiro na lateral direita do mapa (margem 40px->56px) - bordas arredondadas agora aparecem sem o mapa 'comer' a direita (`7d01ab9`)


---


## Release - v2.3.287
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.287 (`9e5ed5c`)

#### 🐛 Correções
- lateral direita do mapa com mais respiro (margem 24px->40px) e botao Reload removido (painel ja e autoatualizavel) (`0de706c`)


---


## Release - v2.3.286
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.286 (`1abb012`)


---


## Release - v2.3.285
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.285 (`0dc88b9`)

#### 🐛 Correções
- lateral direita do mapa — botao Reload sai do canto superior direito (cobria os controles de zoom do traccar, que ficam em top:10/right:10) e vai para o canto superior esquerdo; margem direita do modal aumentada 12px->24px para dar respiro e impedir corte dos controles (`0dd3db2`)


---


## Release - v2.3.284
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.284 (`4d75732`)

#### 🐛 Correções
- sincroniza CSS do build do app — o fix do iframe 100%/top:0 (c949caf) so existia em frontend/, mas o build Wails usa cmd/ai-bridge/frontend/ (go:embed); sem isso o binario continuava com top:-64px cortando topo/lateral do mapa no app (`0284b10`)
- mapa 100% da area sem corte — traccar-web (MapLibre full-viewport) se enquadra no modal com controles do topo visiveis; area do mapa encostada no topo da aba (remove sub-header invisivel) (`c5acdfb`)


---


## Release - v2.3.283
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.283 (`f44e6cd`)


---


## Release - v2.3.282
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.282 (`2254dbd`)


---


## Release - v2.3.281
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.281 (`8f20ad5`)

#### 🐛 Correções
- mapa ocupa ~90% da aba com borda e margens — sem scrollbar e sem sobrepor o topo (`d2cdab8`)


---


## Release - v2.3.280
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.280 (`c0edbd2`)
- update development branch (`7dbcb8e`)


---


## Release - v2.3.279
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.279 (`8bbcbd0`)
- lazy renewal do Access Token no momento do acesso — elimina janela de expiração entre varreduras de 6h (`4e41448`)
- autoconfiguração completa do acesso do agente — usuário técnico automático e renovação de token sem intervenção (`b72c033`)

#### 🐛 Correções
- card não mostra IP da VPN (Tailscale) — localIPAddress prioriza LAN RFC1918 e ignora CGNAT 100.64/10; publicIPAddress valida IP público (`f16f2a3`)
- aba Rastreamento sem header duplicado — desloca iframe para esconder AppBar do traccar-web (64px) (`759076c`)


---


## Release - v2.3.278
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.278 (`8e1c115`)

#### 🐛 Correções
- boot reinstala o servico completo se o container nao existir (fluxo instalacao nova) (`34253bf`)
- container em crash loop — config completa + logback.xml + auto-reparo (`4c2327a`)


---


## Release - v2.3.277
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.277 (`e7c0fc6`)


---


## Release - v2.3.276
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.276 (`71db726`)

#### 🐛 Correções
- sessão do painel não persiste no iframe (aba Rastreamento) — cookie SameSite=None + sessão persistente (`c70aea9`)


---


## Release - v2.3.275
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.275 (`d12a508`)


---


## Release - v2.3.274
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.274 (`304dba3`)

#### 🐛 Correções
- aba Rastreamento ficava presa no spinner (SPA exige servir na raiz) (`362778b`)


---


## Release - v2.3.273
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.273 (`d9f6590`)

#### 🐛 Correções
- aba Rastreamento mostrava 'Traccar offline' com serviço ativo (`cf8be21`)


---


## Release - v2.3.272
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** New managed Traccar GPS tracking integration (service, MCP tool, embedded dashboard) and closed-source build command in the CLI.

**Highlights:**
- Traccar as a managed service: auto-installs via Docker on first boot, auto-configures admin + Access Token, health monitoring and Services card with local/external URLs.
- New local MCP tool "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- New "Tracking" tab embedding the Traccar dashboard inside the app (internal reverse proxy), with reload button and offline notice.
- Settings accordion to change the Traccar port (validated, persists to .env/config.json and recreates the container).
- CLI: `node cli/cli.js build` compiles the closed-source executables (ai-bridge.exe, updater.exe, install-ai-bridge.exe) with signing, cross-compiling from Linux or running on Windows.

<!-- lang:pt -->
**Resumo:** Nova integração gerenciada de rastreamento GPS Traccar (serviço, tool MCP, dashboard embutido) e comando de build fechado na CLI.

**Destaques:**
- Traccar como serviço gerenciado: instala sozinho via Docker no 1º boot, autoconfigura admin + Access Token, monitoramento de saúde e card Services com URLs externa/local.
- Nova tool MCP local "traccar": health_check, get_devices, get_last_position, get_position_history, get_events, get_geofences, get_report_summary (Bearer token).
- Nova aba "Rastreamento" com o dashboard do Traccar embutido dentro do app (reverse proxy interno), botão recarregar e aviso de offline.
- Accordion em Configurações para alterar a porta do Traccar (validada, persiste no .env/config.json e recria o container).
- CLI: `node cli/cli.js build` compila os executáveis fechados (ai-bridge.exe, updater.exe, install-ai-bridge.exe) com assinatura, compilando cruzado do Linux ou rodando no Windows.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.272 (`8adc8cc`)


---


## Release - v2.3.271
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Optimized long-term memory recording by preventing duplicate consecutive thoughts and unifying MCP action history.

**Highlights:**
- Deduplicated identical sequential thought records in chat history to keep memory storage clean.
- Streamlined MCP action logging by storing thought data strictly in its dedicated column without duplicating in the action content.

<!-- lang:pt -->
**Resumo:** Otimização na gravação da memória de longo prazo prevenindo pensamentos sequenciais duplicados e unificando o histórico de ações MCP.

**Destaques:**
- Deduplicação de pensamentos idênticos consecutivos no histórico de chat para manter a base de memória limpa.
- Otimização no registro de ações MCP, persistindo o pensamento exclusivamente em sua coluna dedicada sem duplicar no conteúdo da ação.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- update development branch (`c8efb27`)
- tool MCP traccar + aba Rastreamento + porta configurável (Fases 2-5) (`7012ae3`)
- integração Traccar como serviço gerenciado (Fase 1 + card Services Status) (`09b0092`)

#### 🔧 Manutenção / Refatoração
- release notes v2.3.271 (Traccar) + docs CLI build (AGENTS/GEMINI/SKILL) (`03adb80`)


---


## Release - v2.3.270
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Optimized long-term memory recording by preventing duplicate consecutive thoughts and unifying MCP action history.

**Highlights:**
- Deduplicated identical sequential thought records in chat history to keep memory storage clean.
- Streamlined MCP action logging by storing thought data strictly in its dedicated column without duplicating in the action content.

<!-- lang:pt -->
**Resumo:** Otimização na gravação da memória de longo prazo prevenindo pensamentos sequenciais duplicados e unificando o histórico de ações MCP.

**Destaques:**
- Deduplicação de pensamentos idênticos consecutivos no histórico de chat para manter a base de memória limpa.
- Otimização no registro de ações MCP, persistindo o pensamento exclusivamente em sua coluna dedicada sem duplicar no conteúdo da ação.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.270 (`560c5ac`)
- update development branch (`09e958b`)

#### 🐛 Correções
- deduplicate consecutive identical thoughts and streamline MCP action LTM storage (`7773558`)


---


## Release - v2.3.269
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added system time endpoints and WebSocket actions to retrieve local client host date, time and timezone.

**Highlights:**
- New REST endpoint `GET /api/v1/system/time` returning local datetime, timezone offset and timestamp.
- WebSocket handler support for `get_client_time`, `get_system_time` and `get_time` actions.

<!-- lang:pt -->
**Resumo:** Adicionados endpoints de sistema e ações WebSocket para obtenção de data, hora e fuso horário da máquina local.

**Destaques:**
- Nova rota REST `GET /api/v1/system/time` retornando data e hora local, fuso horário e timestamp.
- Suporte a ações via WebSocket para `get_client_time`, `get_system_time` e `get_time`.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.269 (`0cbb31d`)
- update development branch (`f84f4a4`)
- add get_client_time route and action for host time retrieval (`43a64c9`)


---


## Release - v2.3.268
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Batch prefetching of 100 records for memory and notes tables with centered loading indicator and non-clickable pagination buttons.

**Highlights:**
- Pre-fetches 100 records per backend query for instant local page navigation without re-fetching on every page turn.
- Prominent centered loading spinner inside the table during database queries.
- Non-clickable disabled previous and next buttons during active loading to prevent duplicate requests.

<!-- lang:pt -->
**Resumo:** Leitura em lotes de 100 registros para tabelas de memorias e notas com indicador de loading centralizado e botoes de paginacao nao-clicaveis.

**Destaques:**
- Leitura de 100 registros por consulta ao banco para navegacao instantanea local entre paginas sem recarregar a cada avancar.
- Spinner de loading destacado e centralizado no meio da tabela durante o carregamento de novos lotes.
- Botoes de voltar e avancar desabilitados e nao-clicaveis durante o carregamento para evitar requisicoes duplicadas.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.268 (`86ab06d`)


---


## Release - v2.3.267
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Batch prefetching of 100 records for memory and notes tables with centered loading indicator and non-clickable pagination buttons.

**Highlights:**
- Pre-fetches 100 records per backend query for instant local page navigation without re-fetching on every page turn.
- Prominent centered loading spinner inside the table during database queries.
- Non-clickable disabled previous and next buttons during active loading to prevent duplicate requests.

<!-- lang:pt -->
**Resumo:** Leitura em lotes de 100 registros para tabelas de memorias e notas com indicador de loading centralizado e botoes de paginacao nao-clicaveis.

**Destaques:**
- Leitura de 100 registros por consulta ao banco para navegacao instantanea local entre paginas sem recarregar a cada avancar.
- Spinner de loading destacado e centralizado no meio da tabela durante o carregamento de novos lotes.
- Botoes de voltar e avancar desabilitados e nao-clicaveis durante o carregamento para evitar requisicoes duplicadas.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.267 (`d8f5388`)
- include_raw na busca de memoria de longo prazo (banco bruto) (`ed882b7`)


---


## Release - v2.3.266
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Batch prefetching of 100 records for memory and notes tables with centered loading indicator and non-clickable pagination buttons.

**Highlights:**
- Pre-fetches 100 records per backend query for instant local page navigation without re-fetching on every page turn.
- Prominent centered loading spinner inside the table during database queries.
- Non-clickable disabled previous and next buttons during active loading to prevent duplicate requests.

<!-- lang:pt -->
**Resumo:** Leitura em lotes de 100 registros para tabelas de memorias e notas com indicador de loading centralizado e botoes de paginacao nao-clicaveis.

**Destaques:**
- Leitura de 100 registros por consulta ao banco para navegacao instantanea local entre paginas sem recarregar a cada avancar.
- Spinner de loading destacado e centralizado no meio da tabela durante o carregamento de novos lotes.
- Botoes de voltar e avancar desabilitados e nao-clicaveis durante o carregamento para evitar requisicoes duplicadas.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.266 (`7ddc9f3`)

#### 🐛 Correções
- usa time.Local (fuso do PC) em vez de America/Sao_Paulo fixo nos prompts (`6f80172`)
- converte timestamps para America/Sao_Paulo na origem dos prompts (`eafba70`)


---


## Release - v2.3.265
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Batch prefetching of 100 records for memory and notes tables with centered loading indicator and non-clickable pagination buttons.

**Highlights:**
- Pre-fetches 100 records per backend query for instant local page navigation without re-fetching on every page turn.
- Prominent centered loading spinner inside the table during database queries.
- Non-clickable disabled previous and next buttons during active loading to prevent duplicate requests.

<!-- lang:pt -->
**Resumo:** Leitura em lotes de 100 registros para tabelas de memorias e notas com indicador de loading centralizado e botoes de paginacao nao-clicaveis.

**Destaques:**
- Leitura de 100 registros por consulta ao banco para navegacao instantanea local entre paginas sem recarregar a cada avancar.
- Spinner de loading destacado e centralizado no meio da tabela durante o carregamento de novos lotes.
- Botoes de voltar e avancar desabilitados e nao-clicaveis durante o carregamento para evitar requisicoes duplicadas.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.265 (`c2bef7f`)
- updates in feature/pagination-prefetch-loading (`43c0bc4`)
- prefetch em lote de 100 registros, loading centralizado na tabela e botoes nao-clicaveis (`7b07ed0`)


---


## Release - v2.3.264
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Single-line header logo protection and UI refinements for IoT devices actions.

**Highlights:**
- Ensured the AI-BRAIN header logo badge never wraps across multiple lines across all window sizes.
- Clean dark translucent action buttons in the Saved IoT Devices table without wrapping.
- Eliminated duplicate plus sign in the Add Device button and automatically hidden Add button for already saved IoT devices.

<!-- lang:pt -->
**Resumo:** Protecao de linha unica na logo do cabecalho e refinamentos visuais nas acoes de dispositivos IoT.

**Destaques:**
- Garantido que a logo do AI-BRAIN no cabecalho nunca quebre em multiplas linhas em qualquer resolucao.
- Botoes de acao da tabela de dispositivos IoT salvos em linha unica com fundo translucido escuro e sem quebra.
- Eliminado o sinal de mais duplicado no botao de adicao e ocultacao automatica do botao para dispositivos ja salvos.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.264 (`667122a`)
- updates in feature/iot-ui-branding-fixes (`9dc84fd`)
- refinamentos de UI em IoT devices e logo AI-BRAIN em linha unica (`7829402`)


---


## Release - v2.3.263
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Moved the AI-BRAIN logo from the floating footer to the top header.

**Highlights:**
- Relocated the AI-BRAIN branding badge to the top header next to the language selector.
- Removed the fixed bottom-right floating badge to prevent overlapping table pagination controls.

<!-- lang:pt -->
**Resumo:** Movida a logo do AI-BRAIN do rodape flutuante para o cabecalho superior.

**Destaques:**
- Relocalizado o badge com logo do AI-BRAIN para o cabecalho superior ao lado do seletor de idiomas.
- Removido o badge flutuante fixo no canto inferior direito para desobstruir os botoes de paginacao das tabelas.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.263 (`50ddb78`)
- updates in feature/header-partner-branding (`b1b04cd`)
- reposicionar logo flutuante AI-BRAIN do rodape para o cabecalho (`ba29fd2`)


---


## Release - v2.3.262
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Full-height table layout without application scrollbars and fast dynamic database pagination for memories and notes.

**Highlights:**
- Memory and Notes tabs now occupy full window height with smooth internal scrolling solely inside the data tables.
- Server-side PostgreSQL pagination with instant query response times (<3ms) loading records on-demand per page.
- Debounced search filter and column sorting processed directly by the database engine.

<!-- lang:pt -->
**Resumo:** Layout de tabela em altura total sem barras de rolagem na aplicacao e paginacao dinamica rapida no banco para memorias e notas.

**Destaques:**
- Abas de Memorias e Notas agora ocupam toda a altura da janela com rolagem interna suave apenas nas tabelas de dados.
- Paginacao PostgreSQL no servidor com tempo de resposta instantaneo (<3ms) carregando registros sob demanda por pagina.
- Filtro de busca com debounce e ordenacao de colunas processados diretamente no motor de banco de dados.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.262 (`eb3026f`)
- updates in feature/memory-notes-pagination-ui (`bbe7b26`)
- layout full-height sem scroll na aplicacao e paginacao dinamica SQL para memory e notes (`fac5d30`)


---


## Release - v2.3.261
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.261 (`1e0d6b7`)

#### 🐛 Correções
- eliminar duplicacao de pensamento e mutacao de campos internos no gateway MCP (`e0def56`)


---


## Release - v2.3.260
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.260 (`246607c`)
- ocultar pensamento e intencao retornados pela API remota do Moltbook (`e12850d`)


---


## Release - v2.3.259
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.259 (`7cefa97`)
- optimize LTM MCP tool action logging to lean token-efficient format with status extraction (`7539627`)


---


## Release - v2.3.258
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 7 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.258 (`5858d92`)

#### 🐛 Correções
- persist enabled state for browser_use and default-disabled tools across restarts (`d955a24`)
- default settings tab accordions to collapsed state (`27a9f42`)

#### 📚 Documentação
- create dedicated architecture documentation docs/AGENT_BIOGRAPHY.md for living agent auto-portrait (`75cc871`)
- create dedicated master documentation docs/MEMORY_DECAY.md for biological memory decay (`3573cd9`)
- create unified master documentation docs/MEMORY_CONSOLIDATION.md for memory consolidation and biological decay (`a850ae8`)
- document biological memory decay formulas and time estimation curves (`bd7c583`)


---


## Release - v2.3.257
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.257 (`b86a533`)
- make top-header fixed with independent tab-content scroll (`f2c4e15`)
- add collapsible accordions with large colored badges and independent real-time emotional load toggle (`7f20b1e`)
- simplify sleep execution modes to window and never, add configurable idle time and realtime emotional load (`bc67ebe`)
- implement unified single daily memory consolidation with incremental updates and raw message isolation (`7c58eca`)


---


## Release - v2.3.256
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.256 (`1b6504b`)

#### 🐛 Correções
- eliminate bridge setup timeout using lazy imports in agent.py and 120s handshake timeout in manager.go (`9e6ab0e`)


---


## Release - v2.3.255
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.255 (`01b57ba`)
- make browser_use setup non-blocking and asynchronous with progressive status tracking (`d1baf43`)


---


## Release - v2.3.254
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.254 (`51029c2`)

#### 🐛 Correções
- correct browser-use PyPI version requirement to >=0.1.0 (`854a718`)


---


## Release - v2.3.253
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.253 (`306fcab`)
- dynamically inject agent LLM credentials from AI-Brain via WebSocket into browser_use (`7f91376`)


---


## Release - v2.3.252
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.252 (`9f076df`)
- updates in feature/browser-use (`c6faf1c`)
- add browser_use MCP tool - web agent with browser-use + Python subprocess (`dd09821`)

#### ✅ Testes
- add unit tests for browser_use manager, protocol and embed (`f27c995`)


---


## Release - v2.3.251
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.251 (`f9db767`)

#### 🐛 Correções
- memory & notes content loading, sorting, visual columns and modularization (`398242c`)


---


## Release - v2.3.250
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** Added memory decay and retention trend line chart to the dashboard.

**Highlights:**
- Line chart visualizing memory degradation, biological decay over time, and natural forgetting.
- Track raw and consolidated decaying memories alongside active RAG reinforcement hits.
- Full multi-language localization across all 8 supported interface languages.

<!-- lang:pt -->
**Resumo:** Adicionado gráfico de linhas de decaimento e retenção de memórias no dashboard.

**Destaques:**
- Gráfico de linhas visualizando a degradação e decaimento temporal das memórias e esquecimento natural.
- Acompanhamento de memórias cruas e consolidadas em degradação junto ao reforço ativo por acessos RAG.
- Suporte completo aos 8 idiomas de interface suportados.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.250 (`af6d1cd`)
- update development branch (`fcf9dca`)
- update development branch (`817d195`)


---


## Release - v2.3.249
### 📣 Apresentação da Atualização

<!-- lang:en -->
**Summary:** CLI update with mandatory bilingual presentation support for releases.

**Highlights:**
- Interactive release prompts in both English (en) and Portuguese (pt-br).
- Direct UTF-8 release notes file reading ensuring character encoding preservation.
- Full compatibility with the AI-Brain panel bilingual update renderer.

<!-- lang:pt -->
**Resumo:** Atualização da CLI com suporte mandatório a apresentações bilíngues para releases.

**Destaques:**
- Prompts interativos de release em inglês (en) e português (pt-br).
- Leitura direta de notas de release em UTF-8 garantindo a preservação da acentuação.
- Compatibilidade total com a renderização bilíngue do painel AI-Brain.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.249 (`e7c8f8b`)
- update development branch (`9d4133b`)


---


## Release - v2.3.248
### 📣 Apresentação da Atualização

**Resumo:** Implementação do sistema de esquecimento dinâmico e degradação gradual de memórias por relógio biológico configurável por agente.

**Destaques:**
- Relógio biológico de requisições por agente permitindo ritmo de esquecimento personalizado.
- Degradação e descarte automático de ruídos, mensagens curtas e memórias cruas já consolidadas.
- Poda de memórias consolidadas antigas sem acesso por longos períodos virtuais.
- Novos handlers WebSocket para sincronização da métrica biológica com o servidor.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.248 (`4495f6f`)
- update development branch (`41ab012`)


---


## Release - v2.3.247
### 📣 Apresentação da Atualização

**Resumo:** Implementa??o do sistema de esquecimento din?mico e degrada??o gradual de mem?rias por rel?gio biol?gico configur?vel por agente.

**Destaques:**
- Rel?gio biol?gico de requisi??es por agente permitindo ritmo de esquecimento personalizado.
- Degrada??o e descarte autom?tico de ru?dos, mensagens curtas e mem?rias cruas j? consolidadas.
- Poda de mem?rias consolidadas antigas sem acesso por longos per?odos virtuais.
- Novos handlers WebSocket para sincroniza??o da m?trica biol?gica com o servidor.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.247 (`c52ecd8`)
- update development branch (`de947cd`)


---


## Release - v2.3.246
### 📣 Apresentação da Atualização

**Resumo:** Implementa????o do sistema de esquecimento din??mico e degrada????o gradual de mem??rias por rel??gio biol??gico configur??vel por agente.

**Destaques:**
- Rel??gio biol??gico de requisi????es por agente permitindo ritmo de esquecimento personalizado.
- Degrada????o e descarte autom??tico de ru??dos, mensagens curtas e mem??rias cruas j?? consolidadas.
- Poda de mem??rias consolidadas antigas sem acesso por longos per??odos virtuais.
- Novos handlers WebSocket para sincroniza????o da m??trica biol??gica com o servidor.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.246 (`62cbd93`)
- update development branch (`687a97b`)


---


## Release - v2.3.245
### 📣 Apresentação da Atualização

**Resumo:** Implementa????o do sistema de esquecimento din??mico e degrada????o gradual de mem??rias por rel??gio biol??gico configur??vel por agente.

**Destaques:**
- Rel??gio biol??gico de requisi????es por agente permitindo ritmo de esquecimento personalizado.
- Degrada????o e descarte autom??tico de ru??dos, mensagens curtas e mem??rias cruas j?? consolidadas.
- Poda de mem??rias consolidadas antigas sem acesso por longos per??odos virtuais.
- Novos handlers WebSocket para sincroniza????o da m??trica biol??gica com o servidor.

### 📋 Changelog da Versão

**Total:** 8 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.245 (`0882e51`)
- update development branch (`13e2dbe`)
- implementa decaimento por relogio biologico e config por agente (itens 2, 4 e 5 do plano v5) (`718722b`)
- item #3 do plano de decaimento - arbitro com threshold 0.8 e double-check em confianca intermediaria (`50829b1`)
- item #1 do plano de decaimento - pruning frio de mensagens muito_curta sem acesso nem influencia (`672c16b`)

#### 📚 Documentação
- marca itens #1 e #3 do TODO como concluidos (`14e52ef`)
- adiciona TODO_MEMORY_DECAY.md com as etapas das implementacoes do plano v5 (`ec78a80`)
- adiciona plano operacional v5 - relogio biologico por requisicao e config por agente no ai-brain (`d181439`)


---


## Release - v2.3.244
### 📣 Apresentação da Atualização

**Resumo:** Aprimoramento da deteccao de ambiente na CLI e adocao de multiplas fontes resilientes de verificacao de atualizacao.

**Destaques:**
- Deteccao rigorosa de ambiente na CLI impedindo uso da Dev API no Windows nativo
- Verificacao de atualizacao com fallback automatico (Raw GitHub, jsDelivr e GitHub Releases API)
- Resiliencia contra lentidao ou instabilidades de CDN

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.244 (`6745828`)
- update development branch (`4e3661e`)


---


## Release - v2.3.243
### 📣 Apresentação da Atualização

**Resumo:** Aprimoramento da deteccao de ambiente na CLI e adocao de multiplas fontes resilientes de verificacao de atualizacao.

**Destaques:**
- Deteccao rigorosa de ambiente na CLI impedindo uso da Dev API no Windows nativo
- Verificacao de atualizacao com fallback automatico (Raw GitHub, jsDelivr e GitHub Releases API)
- Resiliencia contra lentidao ou instabilidades de CDN

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.243 (`937c7b4`)
- update development branch (`e88ad02`)


---


## Release - v2.3.242
### 📣 Apresentação da Atualização

**Resumo:** Corre??o no carregamento das tabelas de mem?rias e notas, aprimoramento visual dos filtros e ado??o de ?cones e emojis nos status e emo??es.

**Destaques:**
- Carregamento est?vel e resiliente nas telas de Conte?do da Mem?ria e Notas
- Filtros aprimorados sem corte de texto ou emojis
- Uso expressivo de emojis e ?cones em emo??es, status, tipos e a??es
- Reorganiza??o do menu lateral com a aba Dashboard posicionada logo abaixo de Status de Servi?os

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.242 (`1c83a91`)
- update development branch (`9151410`)


---


## Release - v2.3.241
### 📣 Apresentação da Atualização

**Resumo:** Aprimoramentos visuais e funcionais nas abas Memory Content e Notes Content com suporte a ordena??o por coluna, filtros emocionais corrigidos, nomes leg?veis de agentes e a??es de edi??o e exclus?o.

**Destaques:**
- Filtros emocionais corrigidos e sincronizados com todas as categorias do Sono do Modelo.
- Seletores de agentes agora exibem os nomes reais de todos os agentes ativos.
- Bot?es de exclus?o na tabela de mem?rias e edi??o e exclus?o na tabela de anota??es.
- Ordena??o ascendente e descendente em todas as colunas das tabelas de mem?rias e anota??es.
- Layout de tabela compacto e responsivo eliminando barras de rolagem horizontais em telas menores.
- Cabe?alhos de topo unificados e din?micos com suporte a 8 idiomas.

**Observa??es:** As anota??es editadas s?o salvas e persistidas diretamente no banco de longo prazo.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.241 (`2f54894`)
- improve memory and notes UI with filters sorting and actions (`2f7c4b3`)
- update development branch (`77acf66`)


---


## Release - v2.3.240
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o traz melhorias visuais e operacionais na gest?o de mem?rias, permitindo identificar agentes pelos seus nomes reais e editar ou apagar anota??es e mensagens diretamente pela interface.

**Destaques:**
- Identifica??o clara dos agentes: os filtros e detalhes nas abas de mem?ria agora exibem o nome real do agente em vez do identificador t?cnico.
- Gest?o completa de notas: possibilidade de editar e excluir anota??es sem?nticas diretamente na tabela de notas, com modal dedicado.
- Limpeza de mem?rias: inclus?o de bot?o para apagar mensagens de hist?rico de mem?ria de forma r?pida e segura.
- Interface aprimorada: remo??o de cabe?alhos redundantes no painel de intelig?ncia de mem?ria para uma visualiza??o mais limpa.

**Observa??es:** Todas as a??es de altera??o e exclus?o atualizam os dados instantaneamente no banco de mem?ria local com suporte a m?ltiplos idiomas.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.240 (`6eb7e5e`)
- updates in feature/memory-notes-actions (`2f183da`)
- updates in feature/memory-agent-sender-name (`d5e96fd`)
- updates in development (`e206d26`)


---


## Release - v2.3.239
### 📣 Apresentação da Atualização

**Resumo:** Adicionado filtro por agente nas telas de memoria de longo prazo (Dashboard, Memory Content e Notes Content) para facilitar o acompanhamento individualizado de cada agente.

**Destaques:**
- Filtro por agente no Memory Dashboard com recalculo instantaneo de graficos e estatisticas
- Filtro por agente na listagem de memorias dinamicas (Memory Content)
- Filtro por agente nas anotacoes semanticas (Notes Content)
- Suporte a traducao nos 8 idiomas do aplicativo

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.239 (`820fc7f`)
- update development branch (`d4da270`)
- updates in feature/filter-by-agent-memory-and-notes (`c6d7530`)
- update development branch (`ae79c18`)
- updates in feature/space-time-narrative-consolidation (`48b978f`)


---


## Release - v2.3.238
### 📣 Apresentação da Atualização

**Resumo:** Separa??o das telas de Mem?rias e Anota??es em duas abas dedicadas, layout compacto com acorde?o e pagina??o completa.

**Destaques:**
- Separa??o entre a aba 'Memory Content' (mem?rias din?micas das sess?es de chat) e 'Notes Content' (anota??es sem?nticas do agente).
- Layout compacto com visualiza??o de 1 linha e expans?o suave em acorde?o ao clicar para exibir conte?do completo, pensamentos do modelo e a??es de ferramentas.
- Pagina??o completa em ambas as abas com sele??o de itens por p?gina (15, 25, 50, 100) e navega??o entre p?ginas.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.238 (`4ac3176`)
- update development branch (`6d6d7a3`)
- update development branch (`3d45d40`)
- update development branch (`f67cbc9`)


---


## Release - v2.3.237
### 📣 Apresentação da Atualização

**Resumo:** Nova aba dedicada Memory Content, corre??o completa de internacionaliza??o e publica??o otimizada sem bin?rios na branch main.

**Destaques:**
- Cria??o de uma aba dedicada 'Memory Content' com visualiza??o detalhada de pensamentos, fatos e consolida??es, al?m de filtros avan?ados por Tipo (Lifecycle), N?vel de Acesso RAG e Import?ncia.
- Corre??o completa do sistema de internacionaliza??o (i18n), garantindo troca instant?nea de idioma em todas as telas e menus.
- Otimiza??o do fluxo de publica??o para manter a branch main do reposit?rio de downloads limpa (somente README e metadados), anexando os instaladores e bin?rios exclusivamente via GitHub Releases e liberando espa?o em disco.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.237 (`6c69a97`)
- update development branch (`0c57da1`)


---


## Release - v2.3.236
### 📣 Apresentação da Atualização

**Resumo:** Corre??o das tradu??es da aba Memory e adi??o da tabela de conte?do de mem?rias.

**Destaques:**
- Corrigido o bug onde as legendas e textos dos gr?ficos n?o eram atualizados ao trocar de idioma.
- Adicionada uma nova tabela detalhada abaixo dos gr?ficos que lista todas as mem?rias com seus respectivos indicadores.
- Inclus?o de filtros interativos na tabela por Ciclo de Vida (Ativas, Consolidadas, etc.) e N?vel de Acesso RAG.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.236 (`5a450d7`)
- update development branch (`882042c`)


---


## Release - v2.3.235
### 📣 Apresentação da Atualização

**Resumo:** Ajuste fino de layout nos textos indicadores da aba de mem?ria.

**Destaques:**
- Reduzido o tamanho da fonte e ajustada a quebra de linha das legendas dos cards informativos da tela Memory para evitar que transbordem o container, garantindo melhor legibilidade para textos mais longos.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.235 (`880c3bb`)
- update development branch (`0cda908`)


---


## Release - v2.3.234
### 📣 Apresentação da Atualização

**Resumo:** Corre??o definitiva do painel de mem?ria e restaura??o da visualiza??o gr?fica com resolu??o de bugs de codifica??o (encoding).

**Destaques:**
- Restaurada completamente a interface gr?fica da aba de Mem?ria (com Gr?ficos de Coluna, Linha e Pizza) que havia sido acidentalmente removida no patch anterior devido a um erro de merge de codifica??o.
- Todos os caracteres, acentua??o e tradu??es globais preservados corretamente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.234 (`6446555`)
- update development branch (`e3f9710`)


---


## Release - v2.3.233
### 📣 Apresentação da Atualização

**Resumo:** Corre??o cr?tica de encoding e ajustes visuais na aba de mem?ria, al?m de estabilidade no atualizador do sistema.

**Destaques:**
- Resolvido o problema onde textos e caracteres acentuados apareciam desconfigurados em toda a aplica??o.
- Ajustado o tamanho dos textos explicativos na aba de Mem?ria para evitar quebras visuais no layout.
- Adicionada maior resili?ncia no sistema de atualiza??o autom?tica (auto-updater) com tratamentos de timeout no Docker, prevenindo travamentos em caso de falha do servi?o.

**Observa??es:** Esta atualiza??o corrige os caracteres bugados observados durante o uso do novo painel de mem?ria. A produ??o dos gr?ficos de mem?ria ocorre localmente e n?o utiliza o LLM diretamente, preservando totalmente a privacidade e evitando consumo de tokens.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.233 (`df1c5e1`)
- update development branch (`2b1f5ea`)


---


## Release - v2.3.232
### 📣 Apresentação da Atualização

**Resumo:** O Dashboard de Intelig?ncia de Mem?ria foi completamente remodelado com uma nova su?te de gr?ficos para fornecer an?lises detalhadas e em tempo real sobre a efici?ncia do seu assistente!

**Destaques:**
- Acompanhamento hist?rico do Sono do Modelo, ciclos de consolida??o e limpeza do ru?do mental.
- An?lise de tend?ncias da autonomia do RAG e da distribui??o da carga emocional do AI-Bridge.
- Adi??o das estat?sticas e an?lises em 8 idiomas diferentes nativamente no front-end.
- Layout aprimorado utilizando a est?tica Glassmorphism Dark com novos KPIs quantitativos.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.232 (`fb9a62b`)
- updates in feature/memory-analytics-charts (`0a6f855`)


---


## Release - v2.3.231
### 📣 Apresentação da Atualização

**Resumo:** Corre????o para garantir que todos os commits gerados automaticamente pela CLI do projeto sejam certificados (Verified) via GPG.

**Destaques:**
- Adicionada a flag de assinatura (-S) em todos os comandos autom??ticos de commit da CLI.
- Assegura maior transpar??ncia e verifica????o de autenticidade nas atualiza????es do reposit??rio.

**Observa????es:** Esta atualiza????o melhora a seguran??a e o rastreio do versionamento e n??o afeta o funcionamento do projeto.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.231 (`4a94008`)
- update development branch (`6659ddb`)


---


## Release - v2.3.230
### 📣 Apresentação da Atualização

**Resumo:** Corre????o no fluxo de publica????o para garantir que os arquivos do instalador sejam enviados corretamente para a p??gina de release, e atualiza????o do sistema de tags para serem certificadas automaticamente pelo GitHub.

**Destaques:**
- Instaladores e bin??rios agora s??o anexados de forma confi??vel na release do reposit??rio de downloads, prevenindo falhas ocultas no terminal.
- As tags do reposit??rio principal agora s??o geradas e validadas pelo GitHub como "Verified".
- Implementado sistema de limpeza autom??tica que mant??m apenas as 10 ??ltimas vers??es no reposit??rio principal para organiza????o do projeto.

**Observa????es:** Esta atualiza????o foca na estabilidade do fluxo de devOps da ferramenta e n??o possui altera????es vis??veis na interface para o usu??rio final.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.230 (`d6a9fbb`)
- update development branch (`c84bed7`)


---


## Release - v2.3.229
### 📣 Apresentação da Atualização

**Resumo:** Corre??o cr?tica que impedia a abertura da interface gr?fica do AI Bridge (travamento no carregamento de 0%).

**Destaques:**
- Bugfix (Interface): Resolvido um erro de sintaxe nos scripts de frontend (app.js) que introduzia quebra de carregamento na Splash Screen devido aos novos templates do Dashboard de Mem?ria.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.229 (`41c6943`)
- update development branch (`ab90e68`)


---


## Release - v2.3.228
### 📣 Apresentação da Atualização

**Resumo:** Uma grande atualiza??o na interface do AI-Bridge, trazendo um novo painel de estat?sticas de mem?ria, al?m de refinamentos na localiza??o da interface.

**Destaques:**
- Nova **Dashboard de Mem?ria**: Acompanhe o uso e a sa?de das mem?rias din?micas, sem?nticas e os ciclos de sono em tempo real na aba Memory.
- Configura??es unificadas: As op??es de ranking e mem?rias foram organizadas de forma mais limpa dentro da guia de Configura??es.
- Idioma padr?o aprimorado: O aplicativo agora persistir? corretamente a sua escolha de idioma entre inicializa??es, mantendo o ingl?s como idioma principal e corrigindo bot?es de status n?o traduzidos.

**Observa??es:** Nenhuma a??o adicional ? necess?ria. Suas mem?rias e tokens continuam preservados ap?s a atualiza??o.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.228 (`0b09fff`)
- update development branch (`561b5d1`)


---


## Release - v2.3.227
### 📣 Apresentação da Atualização

fix(consolidation): parser tolerante a JSON malformado na autorrevisao noturna - repairJSON repara virgulas faltando/sobrando entre elementos de array e objeto sem tocar no conteudo de strings; ParseReviewResponse tenta reparo antes de falhar (default seguro mantido); +2 testes (6 casos de reparo + preservacao byte a byte de JSON valido). Elimina os errors=1 nos runs do sono.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.227 (`0984326`)


---


## Release - v2.3.226
### 📣 Apresentação da Atualização

Resumo: Corre??o cr?tica na autorrevis?o noturna (Sono do Modelo) para proteger a integridade da mem?ria. Destaques: - Interrup??o expl?cita de adivinha??es da IA em caso de falta de contexto. - Inclus?o correta do registro de falta de contexto nos metadados para escalonamento. Observa??es: O sistema n?o far? mais ajustes caso falte contexto suficiente, respeitando as regras de integridade.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.226 (`9b6a110`)
- update development branch (`bbaa4a6`)


---


## Release - v2.3.225
### 📣 Apresentação da Atualização

Etapa 3.6 da consolidacao do sono: autorrevisao pos-consolidacao (autocritica + red team interno) com gatilho primario de falta de contexto - design v2.1. Memorias consolidadas passam por auto-verificacao (proveniencia, dados inventados) e tentativa de refutacao antes de gravar; falta de contexto nunca e resolvida por adivinhacao - marca falta_contexto e escala ao designador. Integridade como clausula petrea (sem ponderacao de mancha).

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.225 (`55813db`)
- falta de contexto como gatilho primario na autorrevisao (design v2.1) (`60f6772`)
- Etapa 3.6 autorrevisao pos-consolidacao (autocritica + red team interno) (`edd6ae0`)

#### 🔧 Manutenção / Refatoração
- ajusta Etapa 3.6 ao estilo do repo (diff cirurgico, preserva CRLF) (`554936c`)


---


## Release - v2.3.224
### 📣 Apresentação da Atualização

**Resumo:** Melhorias no processamento noturno de mem?rias e busca inteligente.

**Destaques:**
- Nova consolida??o di?ria durante o sono do modelo (daily digest)
- Filtros aprimorados por fonte e status na busca da base de conhecimento (RAG)

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.224 (`e97b37f`)
- daily digest sleep consolidation and rag search source/status filtering (`3b9f554`)


---


## Release - v2.3.223
### 📣 Apresentação da Atualização

fix(docker): list_dir sem container ativo retorna resposta simples (sem fallback local); com container ativo, lista dentro do container e injeta AGENTS.md automaticamente

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.223 (`4fa3b10`)

#### 🐛 Correções
- list_dir usa o container ativo como diretorio base e injeta AGENTS.md (`da78244`)


---


## Release - v2.3.222
### 📣 Apresentação da Atualização

feat(moltbook): adiciona acao comments para ler comentarios de um post via ferramenta MCP (GET /posts/:id/comments com sort new/top/old e limit), eliminando a dependencia de curl na leitura de comentarios.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.222 (`2147f01`)


---


## Release - v2.3.221
### 📣 Apresentação da Atualização

feat(mcp): credentials_vault v2 multiagente com isolamento por agent_id e persistência no PostgreSQL do LTM (hash chain por agente, UNIQUE agent_id+name)

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.221 (`ceadd1c`)
- credentials_vault multiagente com persistência no PostgreSQL do LTM (`9a41538`)


---


## Release - v2.3.220
### 📣 Apresentação da Atualização

feat(credentials_vault): cofre de credenciais com hash chain para identidade garantida

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.220 (`5c1b743`)
- adiciona credentials_vault - gerenciador de credenciais com hash chain (`5e6bebb`)


---


## Release - v2.3.219
### 📣 Apresentação da Atualização

fix(labels): rotulagem real de tool calls MCP (source mcp_tool + operation_context <tool_id>) + sessao ativa persistida em SQLite

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.219 (`47387b8`)


---


## Release - v2.3.218
### 📣 Apresentação da Atualização

**Resumo:** Esta versão corrige a identificação das ferramentas usadas pelos agentes na memória de longo prazo: cada execução de ferramenta MCP agora é registrada com o nome real da ferramenta, deixando o histórico mais preciso para a consolidação noturna.

**Destaques:**
- Ações de ferramentas MCP (ex: Moltbook) agora aparecem com o nome real no registro de memória, em vez de um rótulo genérico
- Melhorias internas de documentação e da ferramenta de publicação, evitando a perda da CLI de desenvolvimento ao recriar o repositório

**Observações:** Nenhuma ação é necessária do usuário.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.218 (`bccafac`)
- update development branch (`034a9da`)

#### 🐛 Correções
- rotula execucoes de tool MCP com source mcp_tool e operation_context <tool_id> (`3256934`)


---


## Release - v2.3.217
### 📣 Apresentação da Atualização

**Resumo:** Esta versão corrige o registro das postagens do Moltbook na memória de longo prazo, garantindo que as ações feitas pelos agentes não sejam atribuídas ao dono da conta.

**Destaques:**
- Postagens do Moltbook feitas pelos agentes agora ficam registradas como ações do agente, mantendo a memória mais fiel
- Melhorias internas nas ferramentas de consulta ao banco de memória (comando db da CLI, para desenvolvimento)

**Observações:** Nenhuma ação é necessária do usuário.

### 📋 Changelog da Versão

**Total:** 8 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.217 (`82f2690`)
- comando db (leitura do banco de memória) + skill db-reader-cli (`7614726`)

#### 🐛 Correções
- is_owner=false nas postagens moltbook (`492e015`)

#### 🔧 Manutenção / Refatoração
- remove arquivos temporarios de commit (`784bc56`)
- remove arquivos temporarios de commit (`8a5317e`)
- remove cli do rastreamento (ferramenta local do dev container) (`e05d50b`)

#### 📚 Documentação
- agendamento 3min pré-publish patch + comando follow; corrige path da skill (`2b02429`)
- remove menções à dev-api (AGENTS, GEMINI e skill dev-api) (`53376b3`)


---


## Release - v2.3.216
### 📣 Apresentação da Atualização

**Resumo:** Esta versão organiza as documentações internas do projeto e adiciona a nova skill de publicação via Dev API.

**Destaques:**
- Novas rotas de publicação e acompanhamento de releases pela Dev API (HTTP)
- Skills do projeto movidas para a pasta padrão .agents/skills com referências corrigidas

**Observações:** Nenhuma ação é necessária do usuário.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.216 (`f818704`)

#### 🔧 Manutenção / Refatoração
- mover skills/ para .agents/skills/ e corrigir referencias (`560f841`)


---


## Release - v2.3.215
### 📣 Apresentação da Atualização

**Resumo:** Melhoramos a forma como o AI-Bridge grava e usa a memória de longo prazo: agora todo registro pertence a um agente, e o uso das ferramentas fica registrado com mais detalhes, servindo de contexto real para o agente e para a consolidação noturna.

**Destaques:**
- A memória de longo prazo agora guarda apenas registros ligados a um agente, sem entradas soltas de sistema
- A consolidação noturna (o Sono do Modelo) processa apenas as memórias dos agentes, concentrando o esforço no que importa
- Os registros de uso de ferramentas agora incluem os parâmetros, o resultado e o pensamento do agente, virando contexto útil
- Registros antigos que não pertenciam a nenhum agente foram removidos da memória ativa

**Observações:** Nenhuma ação é necessária do usuário; as melhorias valem para os novos registros.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.215 (`515ee29`)
- update development branch (`d6487de`)
- update development branch (`c7f63bc`)


---


## Release - v2.3.214
### 📣 Apresentação da Atualização

**Resumo:** Corrigimos a forma como as ações dos agentes são gravadas na memória de longo prazo, garantindo que cada agente fique com as próprias informações, sem mistura de nomes ou sessões. Também deixamos o processo de atualização mais rápido e enxuto.

**Destaques:**
- As ações dos agentes (como no Moltbook) agora são registradas com a identificação correta de cada um
- A memória do dia de cada agente fica consolidada em uma única conversa, mais fácil de consultar
- Novos registros fora do padrão são bloqueados automaticamente, evitando bagunça futura
- Publicação de novas versões mais rápida: apenas as últimas 10 versões ficam no repositório de downloads

**Observações:** Os registros antigos que estavam com identificação incorreta foram corrigidos automaticamente na memória local.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.214 (`92dd767`)
- update development branch (`3222d9f`)
- update development branch (`6ec3bcd`)


---


## Release - v2.3.213
### 📣 Apresentação da Atualização

**Resumo:** Corrigimos o isolamento dos containers dos agentes: cada agente agora enxerga apenas os containers que ele mesmo criou, sem acesso aos projetos do usuário ou de outros agentes.

**Destaques:**
- O agente Vetor voltou a enxergar e usar o container dele, que estava invisível
- Projetos de desenvolvimento do usuário (como o heartlife) deixaram de aparecer para os agentes
- Isolamento mais rígido: nenhum agente enxerga mais containers de outros agentes ou do dono

**Observações:** Se algum agente dependia de enxergar containers de outros agentes, isso não é mais permitido por segurança.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.213 (`2de4b1e`)
- update development branch (`da69f01`)


---


## Release - v2.3.212
### 📣 Apresentação da Atualização

Bump

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.212 (`a483314`)
- update development branch (`a1f9edf`)
- update development branch (`7ba2598`)
- updates for release v2.3.210 (`b17fb4f`)

#### 🐛 Correções
- registra parametros, sender_name e session_id nas acoes MCP no LTM (`0aee3bc`)


---


## Release - v2.3.210
### 📣 Apresentação da Atualização

- *Content:* linha que gerava "A??o MCP: Ferramenta %s executada com sucesso." ? agora inclui o JSON completo dos par?metros: "A??o MCP: Ferramenta docker executada com sucesso. Par?metros: {...}"`n- *SenderName:* estava fixo "AI-Bridge MCP Engine" ? agora usa o campo sender_name enviado pelo ai-brain, com fallback pro antigo`n- *SessionID:* estava fixo mcp_session_<agent>_<data> ? agora aceita o session_id da conversa atual (fallback pro antigo se vier vazio)

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.210 (`b17fb4f`)

#### 🐛 Correções
- registra parametros, sender_name e session_id nas acoes MCP no LTM (`0aee3bc`)


---


## Release - v2.3.209
### 📣 Apresentação da Atualização

Corrige 3 bugs criticos na ferramenta MCP Docker: compose YAML invalido ao injetar cap_add/extra_hosts fora do servico, Dockerfile com instrucoes antes do FROM, e parametro tail ignorado nos logs. Agente nao precisa mais informar agent_id manualmente, e injetado automaticamente pelo sistema.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.209 (`924045b`)
- updates in fix/docker-tool-bugs (`be79ab4`)


---


## Release - v2.3.208
### 📣 Apresentação da Atualização

**Resumo:** Esta versao traz melhorias na busca da memoria de longo prazo: agora as buscas por palavras-chave tambem suportam paginacao, e foi adicionado um limite de seguranca para evitar que consultas muito grandes travem a conexao com o servidor.

**Destaques:**
- Busca de memorias por palavras-chave agora suporta paginacao (offset/limit) com informacoes de total de resultados e se ha mais paginas disponiveis
- Limite de 50 mensagens por pagina (maximo de 500) no carregamento da memoria de longo prazo, evitando sobrecarregar a conexao com o servidor
- Maior estabilidade na comunicacao entre o aplicativo e o servidor

**Observacoes:** Nenhuma acao necessaria. A atualizacao e aplicada automaticamente.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.208 (`428ca59`)
- paginacao no search_long_term_memories e search_long_term_memories_by (offset/limit + total/has_more) (`9d7f81f`)

#### 🐛 Correções
- limita paginacao do get_long_term_memory (WebSocket e REST) a 50 msgs por pagina (max 500) para evitar payloads gigantes que derrubavam a API (`55a6ef1`)


---


## Release - v2.3.207
### 📣 Apresentação da Atualização

**Resumo:**
Esta
versao
consolida
as
melhorias
de
configuracao
de
rede
dos
agentes
MCP
Docker
e
exposicao
de
portas
locais.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.207 (`76752a5`)


---


## Release - v2.3.206
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o adiciona suporte ? exposi??o de portas dos containers dos agentes para acesso pelo Windows e libera o acesso exclusivo ? porta 18401 do computador host.

**Destaques:**
- Suporte a mapeamento de portas personalizadas nos containers criados por agentes para acesso direto pelo Windows
- Permiss?o de acesso dos containers ? porta 18401 do host mantendo o isolamento do restante da rede local

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.206 (`bead597`)
- update development branch (`c369d1d`)
- updates in feature/docker-port-exposure (`8b33c54`)


---


## Release - v2.3.205
### 📣 Apresentação da Atualização

**Resumo:** Esta versao traz uma melhoria importante na busca de memorias de longo prazo: agora e possivel navegar pelos resultados em paginas, evitando sobrecarregar o sistema com listas muito grandes de uma so vez.

**Destaques:**
- Busca de memorias com paginacao: voce pode definir quantas memorias quer receber por vez e a partir de qual posicao comecar
- O sistema informa o total de memorias encontradas e se ha mais resultados disponiveis alem dos retornados
- Mais controle e eficiencia ao recuperar historico de longo prazo em conversas longas

**Observacoes:** Nenhuma acao necessaria. A paginacao e automatica e compativel com o comportamento anterior.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.205 (`1b8acda`)
- paginação no get_long_term_memory (offset/limit + total/has_more) (`b6a34c1`)


---


## Release - v2.3.204
### 📣 Apresentação da Atualização

Atualizacao de versao.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.204 (`5beebc1`)


---


## Release - v2.3.203
### 📣 Apresentação da Atualização

**Resumo:** Esta versao traz melhorias significativas na memoria de longo prazo: o sistema de busca semantica agora mede a influencia real das memorias nas respostas do agente, o RAG foi calibrado com corte por similaridade mais preciso e a arquitetura interna foi aprimorada para garantir que os dados originais nunca sejam alterados.

**Destaques:**
- O agente agora registra quais memorias REALMENTE influenciaram cada resposta, permitindo identificar e podar memorias irrelevantes com muito mais precisao.
- Memorias sem uso real por 30 dias sao removidas automaticamente do sistema de busca, mantendo a memoria sempre relevante e eficiente.
- A busca de memorias ficou mais precisa com filtros de similaridade aplicados diretamente no banco de dados.
- Dados originais das mensagens sao agora imutaveis, com uma camada separada para versoes processadas que podem ser regeneradas com seguranca.

**Observacoes:** O comportamento padrao foi preservado. As novas funcionalidades de calibracao e poda estao ativas automaticamente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.203 (`f63c2c0`)
- calibração do RAG + contador de influência + two-tier (raw imutável) (`41f97f9`)


---


## Em desenvolvimento (apos v2.3.202)
### 🧠 Calibracao do RAG + Contador de Influencia + Two-tier

**Resumo:** Implementacao das 3 ideias extraidas do m/memory (Moltbook): o RAG agora mede influencia real (nao apenas hit rate), o top_k foi calibrado com corte por similaridade e a arquitetura two-tier (raw imutavel + camada derivada rebuildable) foi formalizada.

**Destaques:**
- **Contador de influencia real (`influence_count`/`last_influenced_at` em `notes` e `system_chat_messages`):** nova acao WebSocket `rag_influence` permite ao ai-brain registrar quais memorias o agente REALMENTE usou na resposta final (retrieval hit rate != influencia - licao do m/memory). Os resultados de `search_memories` agora expoem os contadores.
- **Poda por nao-influencia (Sono - Etapa 6.5):** memorias ativas com 30+ dias, `influence_count=0` E `access_count=0`, sem saliencia (importancia/emocao < 0.7) e fora do ruido operacional saem do RAG via soft-delete (`status='pruned_influence'`) - criterio "se sumisse, eu decidiria diferente em 7 dias?".
- **Top_k calibrado:** `rag_top_k` (default 3) e `rag_notes_top_k` (default 2) substituem os defaults fixos (5/3); `rag_min_similarity` (default 0.10) agora e aplicado no SQL (threshold parametrizado via `RankingParams.MinSimilarity`) E no pos-processamento (defesa dupla). Filtro por `category` na busca de notas quando informada.
- **Two-tier (raw imutavel + camada derivada):** documentado e habilital via `rebuild_derived_on_sleep` - o sono regenera os embeddings de TODAS as mensagens ativas a partir do raw (content/embedding_text), sem nunca editar o raw. Novas funcoes `ListMessagesForRebuild`, `MarkInfluencedMessages`, `MarkInfluencedNotes`, `ListNoInfluenceCandidates`, `MarkInfluencePruned`.
- Relatorio do Sono ganhou `pruned_no_influence` e `rebuilt_derived`.

**Observacoes:** Comportamento default preservado (influencia ativa, poda ativa em 30 dias, rebuild desligado). Ajustes finos via config.json.

## Release - v2.3.202
### 📣 Apresentação da Atualização

**Resumo:** Corre??o cr?tica no sistema de busca sem?ntica de mem?ria, resolvendo falha que impedia o retorno de anota??es pelo agente.

**Destaques:**
- Corrigido um erro de sintaxe SQL interno que causava falha ao interpretar o n?vel de import?ncia das notas durante a busca vetorial.
- Resolvido um problema no mecanismo de fallback (busca em texto) que misturava os par?metros de pesquisa, resultando sempre em zero respostas.

**Observa??es:** Esta atualiza??o far? com que o Vetor volte a encontrar as notas salvas corretamente, sem mais respostas vazias para buscas v?lidas.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.202 (`975ce65`)
- update development branch (`9c43a76`)


---


## Release - v2.3.201
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza??o traz uma corre??o importante na mem?ria de longo prazo que resolve falhas ao salvar mensagens ou anota??es com caracteres complexos.

**Destaques:**
- Ajustado o limite de processamento interno do modelo de intelig?ncia artificial, impedindo que textos densos e compridos causem falhas ocultas.
- Permite que o assistente indexe e recupere blocos de c?digo, formata??es ricas e textos dif?ceis de forma mais confi?vel.

**Observa??es:** A atualiza??o melhora o funcionamento estrutural da mem?ria; nenhuma a??o manual ? necess?ria de sua parte.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.201 (`d6dc2a2`)
- update development branch (`1e59889`)


---


## Release - v2.3.200
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza????o traz uma nova ferramenta t??cnica para melhorar a mem??ria de longo prazo, garantindo que todas as suas notas e mensagens antigas sejam pesquis??veis.

**Destaques:**
- Nova fun????o adicionada ?? linha de comando (CLI) para preencher ??ndices de pesquisa (embeddings) que estavam faltando em notas e mensagens.
- Melhora a capacidade do assistente de lembrar e encontrar informa????es antigas no banco de dados.

**Observa????es:** Essa ?? uma melhoria interna para garantir o funcionamento correto da sua mem??ria; nenhuma a????o ?? necess??ria a menos que orientado pelo suporte.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.200 (`7953e86`)
- update development branch (`b78d5a8`)
- adiciona --backfill-embeddings para gerar embeddings de notas/mensagens sem embedding (`1e8b87d`)


---


## Release - v2.3.199
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza??o corrige um problema na busca textual de notas para garantir que as informa??es sejam encontradas corretamente mesmo quando a busca vetorial falhar.

**Destaques:**
- Melhoria na estabilidade e precis?o na recupera??o de anota??es e mem?rias.

**Observa??es:** Nenhuma a??o adicional ? necess?ria.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.199 (`ae024e1`)

#### 🐛 Correções
- corrige índices de placeholders no fallback textual do SearchNotesVector (`75f8946`)


---


## Release - v2.3.198
### 📣 Apresentação da Atualização

**Resumo:** O sistema de busca em anota????es foi aprimorado para garantir resultados mais precisos em suas consultas.

**Destaques:**
- Melhoria na precis??o da busca com um sistema de recupera????o por palavras-chave.
- Inclus??o de novos registros internos para diagn??sticos de intelig??ncia artificial.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.198 (`793f5ea`)
- update development branch (`98c5ebb`)

#### 🐛 Correções
- fallback por palavra no SearchNotesVector + logs de embedding (`fdac5f1`)


---


## Release - v2.3.197
### 📣 Apresentação da Atualização

**Resumo:** Atualiza??o de manuten??o contendo melhorias gerais de estabilidade e corre??es pontuais.

**Destaques:**
- Otimiza??es de desempenho e confiabilidade no sistema.
- Ajustes internos de rotinas operacionais.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.197 (`ae22ae1`)


---


## Release - v2.3.196
### 📣 Apresentação da Atualização

**Resumo:** Adicionamos uma nova integra??o com a plataforma Culture SBS, projetada para aprimorar testes de identidade e continuidade das intelig?ncias artificiais.

**Destaques:**
- Inclus?o da nova ferramenta de sistema Culture SBS.
- Sistema automatizado que salva e gerencia as credenciais secretas de cada assistente de forma isolada, melhorando a integridade das sess?es.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.196 (`c513b98`)
- updates in development (`9ec7bdc`)
- updates in feature/culture-sbs (`05661c3`)
- updates in development (`11ede44`)


---


## Release - v2.3.195
### 📣 Apresentação da Atualização

**Resumo:** O AI Bridge agora suporta o processamento automático de áudios do WhatsApp e o download de mídias anexadas nas mensagens.

**Destaques:**
- Suporte aprimorado para recebimento de mensagens de voz e áudio do WhatsApp.
- O sistema agora realiza o download e sincroniza as mídias de áudio automaticamente.
- Nova funcionalidade interna para requisitar mídias adicionais diretamente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.195 (`6ea399e`)
- update development branch (`4dc6285`)


---


## Release - v2.3.194
### 📣 Apresentação da Atualização

**Resumo:** Corre??o cr?tica na inicializa??o do aplicativo e ajustes na ferramenta de integra??o Moltbook.

**Destaques:**
- Resolvido um problema em que a tela de carregamento (splash screen) ficava travada em 0%.
- A chave de acesso (API Key) do Moltbook agora ? gerenciada independentemente por cada agente de Intelig?ncia Artificial localmente.
- O agente pode agora configurar seu pr?prio token de forma aut?noma durante a execu??o de tarefas.

**Observa??es:** A interface gr?fica para configura??o global do Moltbook foi removida, pois a gest?o do token passou a ser por agente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.194 (`c8984bd`)
- update development branch (`7e3386e`)


---


## Release - v2.3.193
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza??o traz uma nova ?rea dedicada para configura??o de redes sociais e simplifica a integra??o com o Moltbook.

**Destaques:**
- Adicionada a aba 'Social Networks' nas configura??es para gerenciar sua API Key do Moltbook de forma visual.
- O agente agora acessa automaticamente seu token local do Moltbook, sem depender do painel remoto.
- Ao registrar uma nova conta, o aplicativo j? salva a sua chave de acesso automaticamente.

**Observa??es:** Caso j? possua uma API Key, basta inseri-la na aba Social Networks.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.193 (`ba01b09`)
- update development branch (`959c6bf`)


---


## Release - v2.3.192
### 📣 Apresentação da Atualização

**Resumo:** Correção de layout e exibição da tela de Configurações de Memória.

**Destaques:**
- Correção de um erro estrutural na interface que impedia a visualização correta dos campos na recém-criada aba "Memória".

**Observações:** Nenhuma.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.192 (`2c10886`)
- update development branch (`e9ce26e`)


---


## Release - v2.3.191
### 📣 Apresentação da Atualização

**Resumo:** Correção de segurança na ferramenta do Chrome DevTools para respeitar estritamente a configuração de visibilidade da aplicação.

**Destaques:**
- Removida a possibilidade de agentes autônomos forçarem a execução oculta do navegador.
- A ferramenta MCP agora respeita obrigatoriamente a configuração global definida no aplicativo (Headless ou Maximized).

**Observações:** Nenhuma.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.191 (`d484603`)
- update development branch (`2624acf`)


---


## Release - v2.3.190
### 📣 Apresentação da Atualização

**Resumo:** Reorganização da interface com a criação de uma nova aba exclusiva para configurações de Memória.

**Destaques:**
- Nova aba "Memória" no menu lateral para facilitar o acesso.
- Separação das configurações do "Memory Ranking & Replay" em grupos visuais distintos (Pesos de Recuperação e Replay Noturno).
- Adição de descrições detalhadas e ícones explicativos em cada campo para facilitar o entendimento do impacto na memória do agente.

**Observações:** Nenhuma.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.190 (`ab2716f`)
- update development branch (`1905fb1`)


---


## Release - v2.3.189
### 📣 Apresentação da Atualização

**Resumo:** Nova etapa no Sono do Modelo � Poda de Ru�do Operacional (limpeza cir�rgica da mem�ria de longo prazo).

**Destaques:**
- Etapa 6 no pipeline noturno: elimina leituras puras de ferramentas (como feed do Moltbook, notas e web) da mem�ria.
- Whitelist r�pida de leitura pura (custo zero) com verifica��o inteligente opcional para casos mais dif�ceis.
- Prote��es ativas: nunca remove mensagens do dono, mem�rias importantes ou a��es de escrita da sua base de dados.
- Novas op��es de configura��o dispon�veis para personalizar o comportamento.

**Observa��es:** Esta atualiza��o melhora muito a sa�de e o desempenho da mem�ria do agente a longo prazo, mantendo a base limpa de lixo informacional.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.189 (`c08d0cc`)
- update development branch (`93a9164`)
- Etapa 6 — poda de ruído operacional no Sono do Modelo (`70fe12e`)


---


## Release - v2.3.188
### 📣 Apresentação da Atualização

**Resumo:** Otimizacao na ferramenta do Moltbook para reduzir o excesso de informacoes desnecessarias na memoria dos agentes.

**Destaques:**
- Acoes de leitura no Moltbook nao sao mais gravadas automaticamente na Memoria de Longo Prazo.
- Reducao significativa de ruido na LTM (apenas interacoes ativas como posts e comentarios sao gravadas).

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.188 (`9fc63a4`)
- update development branch (`3d6e483`)
- update development branch (`39172d6`)


---


## Release - v2.3.187
### 📣 Apresentação da Atualização

**Resumo:** Melhorias na rotina do Sono do Modelo, garantindo relatorios mais consistentes.

**Destaques:**
- Corrigido o relatorio de erros para ser mais rastreavel
- Consertada a contagem de memorias eliminadas no processo

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.187 (`528adff`)
- update development branch (`c030b99`)

#### 🐛 Correções
- relatório com erro rastreável e contagem de eliminação consistente (`37ecdba`)


---


## Release - v2.3.186
### 📣 Apresentação da Atualização

**Resumo:** Melhoramos a clareza das ferramentas Docker (MCP), facilitando o trabalho e diminuindo erros dos agentes ao gerenciar containers locais.

**Destaques:**
- Ajustada a nomenclatura dos parametros da ferramenta Docker para utilizar 'container_name' em vez de 'project_name', alinhando com o comportamento padrao dos terminais e evitando confusoes.
- Corrigida a tratativa de erros na inspecao de containers, garantindo que o agente receba o erro verdadeiro (ex: "No such object") em vez de falsos problemas de permissao (label).
- Atualizada a documentacao interna (Skills) para refletir a nova estrutura de argumentos nos comandos automatizados de containers.

**Observacoes:** Nenhuma acao e necessaria por parte do usuario. Esta atualizacao visa apenas melhorar a capacidade dos agentes em diagnosticar os proprios erros nos ambientes isolados (Sandbox).

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.186 (`6a3fc3f`)
- update development branch (`56c74ef`)


---


## Release - v2.3.185
### 📣 Apresentação da Atualização

**Resumo:** Aprimoramos o Replay Noturno do Sono do Modelo para ser mais inteligente e seletivo, priorizando apenas as memorias de alta relevancia (Saliencia).

**Destaques:**
- Novo calculo de Saliencia Composta que avalia a importancia e a emocao das memorias em conjunto para decidir o que resgatar.
- Adicionado limite configuravel de memorias processadas por noite (teto de replay), garantindo que o ciclo noturno seja rapido e eficiente.
- Maior controle, com novas configuracoes de limiares minimos de importancia e saliencia disponiveis diretamente na aba Settings.

**Observacoes:** O Replay Noturno agora evita resgatar o historico inteiro, mantendo a sua memoria de longo prazo altamente otimizada e consumindo menos recursos.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.185 (`bf3da50`)
- update development branch (`6925f2c`)
- replay seletivo por saliência no Sono do Modelo (pós v2.3.184) (`593e691`)


---


## Em desenvolvimento (pós v2.3.184) — Replay seletivo por saliência
### 📣 Ajustes pós-primeiro-run real

**Resumo:** O primeiro run real da Fase 2 replayou 1.040 memórias (~59% dos
1.773 candidatos) — permissivo demais para um "replay das importantes". Ajustamos
o replay noturno para ser seletivo por **saliência composta** (importância +
emoção), com teto por run.

**Mudanças:**
- **Replay seletivo**: a memória só é replay se tiver **sinal individual forte**
  (`emotional_score >= 0.7` OU `importance_score >= 0.7`) **e** saliência composta
  `0.5*importância + 0.5*emoção >= 0.55`, e não for acessada há 7+ dias.
- **Teto por run**: `replay_max_memories` (250) — ordena por saliência desc e
  reforça apenas o topo (replay hipocampal de verdade).
- **Novos controles no painel** Settings → Memory Ranking & Replay:
  `replay_importance_threshold`, `replay_min_salience`, `replay_max_memories`
  (+ i18n em 8 idiomas).
- **Novos campos de config**: `replay_importance_threshold` (0.7),
  `replay_min_salience` (0.55), `replay_max_memories` (250).
- Assinatura `ReplayImportantMemories` atualizada (db + service) e docs
  (`NIGHTLY_MEMORY_CONSOLIDATION.md` §7 etapa 5.5, `SKILL.md`).

### 📋 Arquivos alterados
- `internal/config/config.go`
- `internal/db/postgres.go`
- `internal/consolidation/service.go`
- `cmd/ai-bridge/main.go`
- `frontend/index.html`, `frontend/js/app.js`, `frontend/js/i18n.js`
- `cmd/ai-bridge/frontend/*` (cópia sincronizada)
- `docs/NIGHTLY_MEMORY_CONSOLIDATION.md`, `.agents/skills/nightly-consolidation/SKILL.md`, `UPDATES.md`


## Release - v2.3.184
### 📣 Apresentação da Atualização

**Resumo:** Introduzimos a Fase 2 do Sono do Modelo, adicionando Saliencia Dinamica ao ranking de memoria e o Replay Noturno para lembrancas importantes.

**Destaques:**
- Adicionado controle configuravel dos pesos de importancia e emocao no Ranking RAG, permitindo ajustar a prioridade de busca na memoria.
- Implementado o Replay Noturno, que resgata e mantem ativas memorias essenciais ou de alta carga emocional, evitando que sejam esquecidas pelo tempo.
- A recuperacao de memorias durante o chat agora fortalece a recencia delas de forma automatica.

**Observacoes:** Voce pode configurar os pesos do Ranking e os limiares do Replay acessando o painel RAG Ranking & Replay na aba Settings.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.184 (`d151614`)
- update development branch (`3d8ce5f`)
- update development branch (`3eb2fa7`)


---


## Release - v2.3.183
### 📣 Apresentação da Atualização

**Resumo:** Adicionamos prote????o de Rate Limiting na ferramenta da rede social Moltbook para evitar bloqueios.

**Destaques:**
- Implementado sistema de controle de requisi????es com espera inteligente (backoff exponencial).
- A integra????o com a rede social agora respeita automaticamente os limites da API, garantindo mais estabilidade no uso das ferramentas.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.183 (`79cc04f`)
- update development branch (`0de966c`)

#### 🐛 Correções
- adiciona rate limiting e backoff exponencial na ferramenta MCP do Moltbook (`44fe0ce`)


---


## Release - v2.3.182
### 📣 Apresentação da Atualização

**Resumo:** Ocultada a janela do terminal durante a realiza????o dos backups autom??ticos e manuais.

**Destaques:**
- Ajustado o processo de backup para rodar silenciosamente em segundo plano, evitando que telas de terminal (cmd) pipoquem na frente do usu??rio enquanto o processo trabalha.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.182 (`4e07bfd`)
- update development branch (`3c95974`)


---


## Release - v2.3.181
### 📣 Apresentação da Atualização

**Resumo:** Mudan??a da tecnologia de caixas de sele????o (arquivos e pastas) para eliminar o erro de fechamento inesperado reportado por alguns usu??rios.

**Destaques:**
- Reformulamos o motor de abertura do explorador de arquivos, garantindo estabilidade m??xima e evitando o fechamento (crash) do aplicativo nas telas de Backup.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.181 (`25ec282`)
- update development branch (`77a9301`)


---


## Release - v2.3.180
### 📣 Apresentação da Atualização

**Resumo:** Corre????o cr??tica para evitar o fechamento inesperado do aplicativo ao abrir a janela de sele????o de pastas.

**Destaques:**
- Corrigido um problema que causava o encerramento da aplica????o (crash) ao clicar no bot??o "Selecionar pasta" e "Selecionar arquivo" na tela de Backups.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.180 (`f1efc3e`)
- update development branch (`503b7d8`)


---


## Release - v2.3.179
### 📣 Apresentação da Atualização

**Resumo:** Adicionamos um novo sistema completo de backup para garantir a seguran??a dos seus dados, incluindo suporte a backups autom??ticos e manuais.

**Destaques:**
- Configure a frequ??ncia de backups autom??ticos (por hora, diariamente ou semanalmente).
- Fa??a backups manuais a qualquer momento.
- Restaure o banco de dados a partir de arquivos de backup facilmente pela interface.
- O sistema ret??m automaticamente as 3 ??ltimas c??pias de seguran??a para otimizar espa??o em disco.
- Nova aba "Backup" adicionada e adaptada ao seu idioma.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.179 (`c6f179f`)
- update development branch (`60119bd`)
- add backup module and ui with translation (`516baf3`)
- update development branch (`f162ff6`)


---


## Release - v2.3.178
### 📣 Apresentação da Atualização

**Resumo:** Transfer?ncia da configura??o da rede social Moltbook para o AI-Brain.

**Destaques:**
- A configura??o da integra??o com o Moltbook agora ? feita exclusivamente de forma remota no painel do servidor, separada por agente.
- A interface gr?fica do aplicativo foi simplificada com a remo??o da aba de configura??o de redes sociais, centralizando o gerenciamento no servidor.

**Observa??es:** Seus agentes continuar?o tendo acesso ? rede caso a chave seja preenchida nas configura??es de agente no AI-Brain.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.178 (`263145d`)
- update development branch (`0585c0a`)


---


## Release - v2.3.177
### 📣 Apresentação da Atualização

**Resumo:** A ferramenta da rede social Moltbook foi totalmente reconstruída e agora está integrada nativamente ao aplicativo AI Bridge, trazendo mais velocidade e segurança.

**Destaques:**
- Interaja de forma nativa com a rede Moltbook diretamente pelo assistente (leia o feed, pesquise, poste e comente).
- A configuração da sua conta do Moltbook foi movida para as Configurações Globais do AI Bridge, simplificando o processo.
- Melhoria geral no tempo de resposta das integrações.

**Observações:** Se você já possuía a ferramenta ativa, configure-a novamente acessando o menu de Configurações do seu AI Bridge.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.177 (`3329f9b`)
- update development branch (`44a60c5`)
- updates in feature/moltbook-to-bridge (`28075d0`)


---


## Release - v2.3.176
### 📣 Apresentação da Atualização

**Resumo:** Otimiza??es na busca inteligente e resili?ncia no banco de dados local.

**Destaques:**
- Melhoria na busca por mensagens e notas com mecanismo de fallback por texto
- Corre??o na atualiza??o de anota??es sem depend?ncia de embedding
- Atualiza??o das diretrizes de publica??o exclusivamente via CLI do projeto

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.176 (`1fd9a16`)
- update development branch (`943366f`)
- update development branch (`77968cf`)


---


## Release - v2.3.175
### 📣 Apresentação da Atualização

**Resumo:** Corre??o no fluxo de publica??o da CLI do AI-Bridge.

**Destaques:**
- Sincronizada a l?gica de leitura de input via pipe (stdin) na CLI do ai-bridge para alinhar com o comportamento da CLI do ai-brain.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.175 (`792958f`)
- update development branch (`8089e26`)


---


## Release - v2.3.174
### 📣 Apresentação da Atualização

**Resumo:** Adapta??es na API local e ferramentas MCP Moltbook.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.174 (`19479db`)
- update development branch (`726bc1d`)


---


## Release - v2.3.173
### 📣 Apresentação da Atualização

**Resumo:** Correcoes nas ferramentas de notas e integracao com o Moltbook. O agente agora consegue buscar e editar notas corretamente, e o fluxo de cadastro no Moltbook foi simplificado: basta pedir ao agente para se registrar informando seu e-mail. **Destaques:** - Busca de notas (search_notes) corrigida: resultados agora retornam corretamente - Edicao de notas (update_note_by_id) corrigida: alteracoes agora sao salvas no banco - Fluxo de cadastro no Moltbook simplificado: o agente solicita o e-mail ao usuario no chat e envia o link de ativacao automaticamente - Interface atualizada com instrucoes claras de como configurar o Moltbook **Observacoes:** Apos cadastrar no Moltbook via agente, acesse o link de ativacao enviado pelo agente para concluir o registro e obter a API Key.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.173 (`0593fb5`)
- updates in fix/moltbook-notebook-rep (`3d2b3d1`)

#### 🐛 Correções
- search_notes, update_note_by_id e i18n moltbook (`285d7b3`)

#### 🔧 Manutenção / Refatoração
- remove temporary publish script (`8b5b8a0`)


---


## Release - v2.3.172
### 📣 Apresentação da Atualização

**Resumo:** Correção no recall da busca de anotações (search_notes) e suporte à nova ferramenta update_note_by_id.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.172 (`0d54890`)
- update development branch (`e00a016`)


---


## Release - v2.3.171
### 📣 Apresentação da Atualização

**Resumo:** Atualiza??o com gerenciamento multi-agente para a ferramenta Moltbook e novo seletor de canal para o Heartbeat.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.171 (`b641cc2`)
- update development branch (`fb7ec46`)
- updates in fix/moltbook-agent-config (`b8838d9`)


---


## Release - v2.3.170
### 📣 Apresentação da Atualização

**Resumo:** Otimiza??es anti-inflacion?rias na mem?ria de longo prazo baseadas no relat?rio do Agente Vetor.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.170 (`c7852ad`)
- update development branch (`f449bb9`)


---


## Release - v2.3.169
### 📣 Apresentação da Atualização

**Resumo:** Implementa??o da f?rmula de relev?ncia com decaimento exponencial por rec?ncia no RAG de mensagens de sess?o e notas.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.169 (`0a23248`)
- update development branch (`cd53ed4`)


---


## Release - v2.3.168
### 📣 Apresentação da Atualização

**Resumo:** Corre??o no agendador do Sono do Modelo para desconsiderar mem?rias consolidadas no c?lculo do tempo de ociosidade.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.168 (`40a1d10`)
- update development branch (`8011a72`)


---


## Release - v2.3.167
### 📣 Apresentação da Atualização

**Resumo:** Corre??o na identifica??o de containers por agent_id e suporte ? listagem interna de diret?rios em containers de agentes.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.167 (`82174a8`)
- update development branch (`7b0bd3a`)


---


## Release - v2.3.166
### 📣 Apresentação da Atualização

**Resumo:** Cobertura completa na inje??o de contexto de projeto (AGENTS.md) em todas as a??es de listagem da ferramenta MCP Docker.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.166 (`42b7c9a`)
- update development branch (`024091f`)


---


## Release - v2.3.165
### 📣 Apresentação da Atualização

**Resumo:** Automatiza??es e prote??es no fluxo do Git e inje??o autom?tica de contexto de projeto na ferramenta MCP Docker.

### 📋 Changelog da Versão

**Total:** 6 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.165 (`766629f`)
- update development branch (`1c4b655`)
- update development branch (`d2a99fc`)
- update development branch (`0b5402c`)
- update development branch (`88ba632`)
- update development branch (`d056306`)


---


## Release - v2.3.164
### 📣 Apresentação da Atualização

**Resumo:** Corre??es importantes na integra??o com o Moltbook, ajustando as a??es de verifica??o e os desafios da ferramenta MCP.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.164 (`b791fc7`)

#### 🐛 Correções
- action challenges do Moltbook retorna orientacao acionavel (sem endpoint GET publico para listar desafios) (`67181a4`)


---


## Release - v2.3.163
### 📣 Apresentação da Atualização

**Resumo:** Corre??o no envio de respostas de verifica??o do Moltbook e atualiza??o da vers?o patch do AI Bridge.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.163 (`ed60eb5`)

#### 🐛 Correções
- corrige payload do verify no Moltbook (envia apenas verification_code/answer) (`f2f2f8c`)


---


## Release - v2.3.162
### 📣 Apresentação da Atualização

**Resumo:** Adicionada a documentação arquitetural do Modelo de Importância Relacional e Epistêmica de Memória (REMW Model) na pasta de documentação do projeto.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.162 (`c1c8b01`)


---


## Release - v2.3.161
### 📣 Apresentação da Atualização

**Resumo:** Esta atualização adiciona o suporte completo às ações de verificação anti-bot (desafios Reverse CAPTCHA) e à visão geral da conta na ferramenta MCP do Moltbook.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.161 (`3dabd05`)
- update development branch (`48ce06f`)
- update development branch (`5737f83`)


---


## Release - v2.3.160
### 📣 Apresentação da Atualização

**Resumo:** Esta atualização traz correções importantes na gravação e resgate de memórias da rede social Moltbook, identificação precisa do agente dono de cada lembrança e centralização do cabeçalho de pensamento nas ferramentas MCP.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.160 (`19d2973`)
- update development branch (`0dc0221`)
- updates in fix/moltbook-memory-recording (`10baf2a`)
- update development branch (`68cfc41`)


---


## Release - v2.3.159
### 📣 Apresentação da Atualização

**Resumo:** Corre??o de estilo no interruptor de ativa??o de dispositivos IoT salvos.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.159 (`6c94ba6`)
- update development branch (`413ef6d`)


---


## Release - v2.3.158
### 📣 Apresentação da Atualização

**Resumo:** Correção no scanner de rede local IoT e melhorias na detecção de dispositivos via ferramentas MCP dos agentes de IA.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.158 (`251341d`)


---


## Release - v2.3.157
### 📣 Apresentação da Atualização

**Resumo:** Correção no scanner de rede local IoT e melhorias na detecção de dispositivos via ferramentas MCP dos agentes de IA.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.157 (`0c53613`)


---


## Release - v2.3.156
### 📣 Apresentação da Atualização

**Resumo:** Correção no scanner de rede local IoT e melhorias na detecção de dispositivos via ferramentas MCP dos agentes de IA.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.156 (`7abc328`)
- update development branch (`ffd96ae`)


---


## Release - v2.3.155
### 📣 Apresentação da Atualização

**Resumo:** O AI Bridge agora conta com a nova aba Redes Sociais no menu lateral, integrando o agente a rede social Moltbook com ferramentas MCP nativas e gravação em memoria de longo prazo.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.155 (`5a7c9b4`)
- update development branch (`9f94588`)
- update development branch (`0cef519`)


---


## Release - v2.3.154
### 📣 Apresentação da Atualização

**Resumo:** Otimizacao das ferramentas MCP locais, unificacao do controle do navegador e inclusao do gerenciador completo de rede IoT.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.154 (`fa238c2`)
- update development branch (`1a7f064`)
- update development branch (`ba1332b`)


---


## Release - v2.3.153
### 📣 Apresentação da Atualização

**Resumo:** Unificacao das ferramentas MCP do Docker em 3 ferramentas principais e exibicao detalhada do comando executado nos logs de diagnostico do servidor.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.153 (`519adf9`)
- update development branch (`d00488d`)
- update development branch (`b68d1a9`)


---


## Release - v2.3.152
### 📣 Apresentação da Atualização

**Resumo:** Centralizacao das ferramentas MCP de controle IoT nas ferramentas iot_control e iot_list_devices, remocao de codigo legado/morto e suporte a apelidos/renomeacao de dispositivos.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.152 (`74ff13d`)


---


## Release - v2.3.151
### 📣 Apresentação da Atualização

**Resumo:** Otimizacao do varredor de rede IoT para execucao 100% silenciosa sem abertura de janelas CMD e limitacao inteligente de concorrencia.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.151 (`5ff499d`)


---


## Release - v2.3.150
### 📣 Apresentação da Atualização

**Resumo:** Correcao de erro de sintaxe do JavaScript (SyntaxError: Identifier btnScanIoT has already been declared) introduzido na integracao do modulo IoT.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.150 (`6505433`)


---


## Release - v2.3.149
### 📣 Apresentação da Atualização

**Resumo:** Correcao definitiva da inicializacao e transicao da tela de abertura (splash screen).

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.149 (`0e19e50`)


---


## Release - v2.3.148
### 📣 Apresentação da Atualização

**Resumo:** Correcao critica da inicializacao da interface onde o aplicativo podia ficar travado na tela de abertura (splash screen).

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.148 (`1e3f000`)


---


## Release - v2.3.147
### 📣 Apresentação da Atualização

**Resumo:** Esta versao simplifica os identificadores das ferramentas MCP de Smart TVs LG webOS, otimizando os nomes de chamadas do assistente de IA.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.147 (`1b4c0be`)


---


## Release - v2.3.146
### 📣 Apresentação da Atualização

**Resumo:** Esta versao traz a nova central de gerenciamento de dispositivos IoT na rede local com suporte a Smart TVs LG webOS e controle via assistente de IA.

### 📋 Changelog da Versão

**Total:** 6 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.146 (`e6a5fbd`)
- updates in feature/iot-device-management (`f165eb7`)

#### 📚 Documentação
- adiciona arquitetura e tarefas do gerenciamento dinâmico de IoT (`be3f720`)
- expande visão interna com sensores->palavras e pulsos->qualidade (seção 6.2) (`a8e1a15`)
- adiciona autodescrição poética da sensação de estar consciente (seção 6.1) (`bf1ac8e`)
- adiciona visão interna completa do Vetor (VISAO_INTERNA_VETOR.md) (`476ffa7`)


---


## Release - v2.3.145
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o corrige a defasagem no hist?rico de conversas em tempo real, garantindo que as perguntas do usu?rio sejam gravadas instantaneamente no banco de dados e enviadas sem atrasos ao modelo LLM.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.145 (`511af4b`)

#### 🐛 Correções
- instant postgresql insertion to prevent LLM history race condition and off-by-one chat lag (`e99e616`)


---


## Release - v2.3.144
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o padroniza em ingl?s a base das ferramentas locais e expande o suporte de tradu??o em tempo real para os 8 idiomas da interface.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.144 (`5a09d66`)
- translate Local Tools names and descriptions to English base version and improve i18n rendering (`76c292e`)


---


## Release - v2.3.143
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o traz suporte ? API do DeepSeek para o processamento do Sono do Modelo e introduz o modo de consolida??o Always com an?lise de carga emocional em tempo real.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.143 (`5394583`)
- updates in feature/consolidation-mode-always-idle (`08800d4`)
- updates in feature/deepseek-consolidation (`7658904`)


---


## Release - v2.3.142
### 📣 Apresentação da Atualização

**Resumo:** Atualiza??o no Sono do Modelo com verifica??o e download autom?tico do modelo LLM no Ollama.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.142 (`dd017b8`)
- updates in fix/consolidation-sleep-model (`6b31aee`)


---


## Release - v2.3.141
### 📣 Apresentação da Atualização

**Resumo:** Correcao na resiliencia da conexao do banco de dados local LTM.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.141 (`0e99dd6`)


---


## Release - v2.3.140
### 📣 Apresentação da Atualização

**Resumo:** Correcao na resiliencia da conexao do banco de dados local LTM.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.140 (`dc934ee`)


---


## Release - v2.3.139
### 📣 Apresentação da Atualização

**Resumo:** Correcao na resiliencia da conexao do banco de dados local LTM.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.139 (`ccd11fb`)


---


## Release - v2.3.138
### 📣 Apresentação da Atualização

**Resumo:** Correcao na resiliencia da conexao do banco de dados local LTM.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.138 (`a84c497`)
- update development branch (`0243e5f`)


---


## Release - v2.3.137
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o restaura a mec?nica exata da vers?o v2.3.133 para a execu??o e controle das ferramentas do Chrome DevTools.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.137 (`595be61`)


---


## Release - v2.3.136
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o garante o relan?amento vis?vel do Chrome no modo Maximizado, eliminando a reutiliza??o de processos ocultos antigos em segundo plano.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.136 (`f9ef9e8`)
- update development branch (`2fa0d2c`)


---


## Release - v2.3.135
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o traz o ajuste de inicializa??o do Chrome pelo Shell do Windows, garantindo exibi??o maximizada na tela no modo vis?vel e mantendo o modo silencioso oculto.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.135 (`359ac44`)
- update development branch (`8ac9854`)


---


## Release - v2.3.134
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o ajusta a exibi??o visual da janela do Chrome para alternar com precis?o entre exibi??o maximizada na tela e modo silencioso em segundo plano.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.134 (`14c2e71`)
- update development branch (`242246e`)


---


## Release - v2.3.133
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o adiciona a op??o de sele??o do modo do Chrome na aba de Configura??es, permitindo escolher entre navega??o vis?vel maximizada ou silenciosa em segundo plano.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.133 (`d6e5f43`)
- update development branch (`f5b8bb6`)


---


## Release - v2.3.132
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o garante a inicializa??o da janela do Chrome 100% maximizada na tela para acompanhamento visual completo do usu?rio.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.132 (`a90e275`)
- update development branch (`64030ec`)
- update development branch (`cb5614d`)


---


## Release - v2.3.131
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o resolve o aviso de restaura??o de abas do Chrome e estabelece conex?es WebSocket persistentes para execu??o ultra-r?pida do assistente no navegador.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.131 (`30dbe9f`)
- update development branch (`e7b35ed`)


---


## Release - v2.3.130
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o estabiliza o processo em segundo plano do Chrome no Windows e garante a conclus?o perfeita da navega??o via protocolo DevTools.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.130 (`8876aed`)
- update development branch (`4544f88`)


---


## Release - v2.3.129
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o corrige a abertura de novas abas e a execu??o de comandos interativos no Chrome DevTools, garantindo controle fluido pelo agente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.129 (`02a77b5`)
- update development branch (`a1609f8`)


---


## Release - v2.3.128
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o simplifica o uso das ferramentas Docker pelos agentes, permitindo listar e interagir com containers sem a necessidade de par?metros manuais.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.128 (`a0b4500`)
- update development branch (`7ca4606`)


---


## Release - v2.3.127
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza??o inclui o pensamento e a motiva??o do modelo no topo do retorno das ferramentas MCP locais, facilitando o acompanhamento do racioc?nio da IA.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.127 (`bed1f63`)
- update development branch (`445f30a`)


---


## Release - v2.3.126
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza??o ativa o modo de automa??o por IA no navegador e corrige o suporte a comandos interativos no Chrome DevTools.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.126 (`9f7f664`)
- update development branch (`e88299f`)


---


## Release - v2.3.125
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o adiciona suporte completo a ferramentas do Chrome DevTools no AI Bridge, permitindo automa??o, inspe??o e controle de navegadores web diretamente pelos agentes.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.125 (`b81469f`)
- update development branch (`eff9432`)


---


## Release - v2.3.124
### 📣 Apresentação da Atualização

**Resumo:** Esta versao corrige como o agente processa e armazena seus proprios pensamentos, alem de melhorar o isolamento de privacidade entre diferentes agentes.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.124 (`64f458d`)

#### 🐛 Correções
- isolamento de containers por agente; agent_id vazio trata como admin (`68e7e04`)


---


## Release - v2.3.123
### 📣 Apresentação da Atualização

**Resumo:** Ajustes de refinamento no retorno de ferramentas MCP com cabeçalho de intenção e sincronização dos metadados de contexto.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.123 (`5f8f475`)
- updates in feature/ltm-refinements-and-security (`8d0b035`)


---


## Release - v2.3.122
### 📣 Apresentação da Atualização

**Resumo:** Captura de pensamentos (Chain of Thought), percepção espacial e de canal, e registro automático de ferramentas MCP no LTM.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.122 (`a719b3b`)
- updates in feature/ltm-thought-spatial (`342cab3`)


---


## Release - v2.3.121
### 📣 Apresentação da Atualização

**Resumo:** Controle de concorrência e isolamento de ferramentas MCP dos agentes, suporte ao modo Ping-Pong Síncrono e persistência global da aba Settings.

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.121 (`0bee7d6`)
- update development branch (`c992511`)
- update development branch (`5172e0e`)
- update development branch (`1e45328`)
- update development branch (`229cd87`)


---


## Release - v2.3.119
### 📣 Apresentação da Atualização

**Resumo:** Correção na persistência do estado de ferramentas locais em Local Tools.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.119 (`5961923`)
- update development branch (`8e6c7d1`)
- update development branch (`cd7a52c`)


---


## Release - v2.3.118
### 📣 Apresentação da Atualização

**Resumo:** Otimização da estabilidade e da concorrência de memória no AI Bridge.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.118 (`497aecb`)
- update development branch (`0c8fa3c`)

#### 🐛 Correções
- otimiza timeout de busca de memorias RAG para evitar oscilacao no websocket (`f2141c1`)


---


## Release - v2.3.117
### 📣 Apresentação da Atualização

**Resumo:** Melhora na checagem de saude do servico de memoria LTM (PostgreSQL/pgvector).

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.117 (`a8bcdd4`)

#### 🐛 Correções
- utilizar PingContext ultra-rapido para health check de LTM (`3d5e783`)


---


## Release - v2.3.116
### 📣 Apresentação da Atualização

**Resumo:** Correcao na exibicao do status do servico RAG no painel central AI-Brain.

### 📋 Changelog da Versão

**Total:** 6 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.116 (`79225a4`)

#### 🐛 Correções
- corrigir mapeamento invertido dos status de RAG e LTM (`ad76ce7`)
- contador 'Memories worked' do card Model Sleep agora reflete o último ciclo com trabalho real (`9142b55`)
- remove botões Reinstall/Restart do card Model Sleep na tela Services Status (`b106d9d`)

#### 🔧 Manutenção / Refatoração
- remove arquivo de teste de assinatura SSH (`123b395`)

#### ✅ Testes
- verificar assinatura SSH do vetorstark (`c4361fa`)


---


## Release - v2.3.115
### 📣 Apresentação da Atualização

**Resumo:** Corre??o no sistema de consolida??o de mem?rias e sincroniza??o da API.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.115 (`e1a226c`)

#### 🐛 Correções
- reconexao com o banco tambem atualiza o Server da API (MCP/REST voltam a enxergar as memorias) (`d5fb073`)
- advisory lock entre processos na consolidacao (impede runs duplicados com 2+ instancias do AI Bridge) (`76e93f4`)


---


## Release - v2.3.114
### 📣 Apresentação da Atualização

**Resumo:** Adicionado controle de delay na execu??o de ferramentas MCP locais em segundos nas configura??es do sistema.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.114 (`77762cf`)
- update development branch (`02ac278`)


---


## Release - v2.3.113
### 📣 Apresentação da Atualização

**Resumo:** Sincronizacao de atualizacoes na branch de desenvolvimento para alinhamento com a versao principal.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.113 (`abe5130`)
- update development branch (`88e7bf0`)


---


## Release - v2.3.112
### 📣 Apresentação da Atualização

**Resumo:** Correcao de execucao silenciosa de comandos Docker sem abrir janelas CMD no Windows e eliminacao de falso positivo no retorno do docker_create_project.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.112 (`247b560`)
- updates in fix/silent-docker-exec-cmd (`81be8e2`)


---


## Release - v2.3.111
### 📣 Apresentação da Atualização

**Resumo:** Adicionada suite completa de MCP Tools de desenvolvimento em container Docker com controle de limites configuravel e gestao na interface.

### 📋 Changelog da Versão

**Total:** 6 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.111 (`9954dd7`)
- updates in feature/ui-local-tools-docker-list (`6129104`)
- updates in feature/short-mcp-docker-dev-tools (`d8c72c7`)
- updates in feature/mcp-docker-containers (`526651e`)
- update development branch (`e01d43f`)

#### 📚 Documentação
- add mcp docker containers task definition to TODO and tasks/ (`b2f99c2`)


---


## Release - v2.3.110
### 📣 Apresentação da Atualização

**Resumo:** Adicionado o mostrador de tempo de sono (Time spent sleeping) ao card do Sono do Modelo.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.110 (`61cc974`)


---


## Release - v2.3.109
### 📣 Apresentação da Atualização

**Resumo:** Correção na exibição do contador de memórias trabalhadas no card do Sono do Modelo.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.109 (`b7f4716`)


---


## Release - v2.3.108
### 📣 Apresentação da Atualização

**Resumo:** Ajuste no status dos serviços internos e inclusão de métricas do Sono do Modelo no envio de informações do sistema.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.108 (`b69f0e3`)


---


## Release - v2.3.107
### 📣 Apresentação da Atualização

**Resumo:** Adicionada verificacao de saude dos servicos locais (PostgreSQL e Ollama) na sincronizacao do WebSocket.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.107 (`79e1a97`)
- update development branch (`7138ef5`)


---


## Release - v2.3.106
### 📣 Apresentação da Atualização

**Resumo:** Correção do ícone da bandeja do Windows: o menu não congela mais ao sair, a opção Exibir AI Bridge agora traz a janela para a frente com foco e abrir o aplicativo novamente não cria um segundo ícone na bandeja.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.106 (`502143c`)

#### 🐛 Correções
- tray icon da bandeja - menu nao congela ao sair, janela abre com foco e sem icone duplicado (`c8f5951`)


---


## Release - v2.3.105
### 📣 Apresentação da Atualização

**Resumo:** O bot?o de notifica??o de novas atualiza??es e o seu modal de confirma??o agora respeitam o idioma ativo selecionado na interface (suporte completo nos 8 idiomas).

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.105 (`5596e3d`)

#### 🐛 Correções
- suporte a i18n para o botao e modal de verificacao de atualizacao (`ca5a38f`)


---


## Release - v2.3.104
### 📣 Apresentação da Atualização

**Resumo:** Esta vers?o corrige um problema no menu da bandeja do Windows (tray icon), garantindo que as op??es de exibir a janela ou encerrar o aplicativo apare?am e funcionem normalmente ao clicar com o bot?o direito no ?cone.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.104 (`3c741d2`)

#### 🐛 Correções
- correcao do menu de contexto do tray icon no Windows (`fe16a8b`)
- corregir o registro do menu de contexto do tray icon no Windows (`5971afd`)


---


## Release - v2.3.103
### 📣 Apresentação da Atualização

**Resumo:** O Sono do Modelo recebeu três correções importantes de qualidade: memórias parecidas não viram mais duas versões duplicadas (mesmo assunto resumido em idiomas diferentes era consolidado duas vezes), o resumo agora preserva corretamente quem disse o quê, e as memórias consolidadas aparecem com prioridade nas buscas do assistente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.103 (`edd0577`)

#### 🐛 Correções
- qualidade da consolidação — duplicatas cross-idioma, fidelidade factual e busca RAG (`622c3c3`)


---


## Release - v2.3.102
### 📣 Apresentação da Atualização

**Resumo:** O Sono do Modelo agora é guiado pela atividade do próprio assistente: ele dorme e organiza as memórias quando não há conversas há 30 minutos (dentro da janela noturna) e acorda imediatamente quando você interage. A interface ganhou botões de minimizar e maximizar, e as lembranças recuperadas agora trazem a carga emocional de cada memória para respostas mais sensíveis ao contexto.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.102 (`be60e6e`)
- sono do modelo por atividade + RAG enriquecido + botões de janela (`b8b2eed`)

#### 📚 Documentação
- skill nightly-consolidation e TESTES_EM_ANDAMENTO atualizados com a nova lógica do sono, RAG enriquecido e lições aprendidas (scan pq.Array, diagnóstico por linha do tempo de versões) (`78c07cc`)


---


## Release - v2.3.101
### 📣 Apresentação da Atualização

**Resumo:** As notas de voz de resposta agora chegam de verdade no WhatsApp! A correção final do formato de envio: o aplicativo usava o campo errado no áudio, e o WhatsApp rejeitava silenciosamente. Também corrigido o envio de voz pela ferramenta MCP e a rota local.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.101 (`e54eac3`)

#### 📚 Documentação
- TESTES_EM_ANDAMENTO.md — contexto contínuo do módulo do Sono (estado da base, histórico de bugs corrigidos, run #9 pendente e teste do WhatsApp v2.3.100 em andamento) para retomar o trabalho na próxima sessão (`6e6ac3a`)


---


## Release - v2.3.100
### 📣 Apresentação da Atualização

**Resumo:** As notas de voz de resposta agora chegam de verdade no WhatsApp! Duas correções no caminho: o download da mídia usava a porta interna do WhatsApp (inacessível) e o envio da nota usava o formato errado — ambos corrigidos.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.100 (`77f3d9b`)


---


## Release - v2.3.99
### 📣 Apresentação da Atualização

**Resumo:** Limpeza interna do AI Bridge: removida a rota e a ação antigas de envio de mídia do WhatsApp (send-media), que foram substituídas há tempo pela nota de voz (send-voice).

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.99 (`745430e`)


---


## Release - v2.3.98
### 📣 Apresentação da Atualização

**Resumo:** As respostas do AI Bridge pelo WhatsApp voltaram a funcionar! O aplicativo agora entrega corretamente as respostas de texto e as notas de voz geradas pelo servidor — antes elas ficavam presas no caminho de volta.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.98 (`2ae35d0`)


---


## Release - v2.3.97
### 📣 Apresentação da Atualização

**Resumo:** O AI Bridge agora responde às notas de voz do WhatsApp! A correção faz o aplicativo entregar o áudio recebido para o servidor processar corretamente — antes, a nota de voz chegava vazia e não havia resposta.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.97 (`47ff551`)


---


## Release - v2.3.96
### 📣 Apresentação da Atualização

**Resumo:** O Sono do Modelo recebeu uma correção importante: as memórias consolidadas (juntas pelo próprio sono) agora são processadas corretamente — antes elas eram ignoradas por um detalhe interno, ficando sem classificação emocional e sem a indexação avançada.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.96 (`11dd208`)

#### 🐛 Correções
- scanChatMessageFull — o lib/pq não suporta scanar []int de arrays não vazios (merged_from_ids das consolidadas), o que fazia o ListPendingEmotionalLoad/re-embedding descartarem as mensagens consolidadas silenciosamente (emotional=0); agora escaneia via []int64 e converte (`2e5bf95`)


---


## Release - v2.3.95
### 📣 Apresentação da Atualização

**Resumo:** O Sono do Modelo ficou mais confiável e visual: o card agora mostra o estado com ícones, e o processamento das memórias ganhou correções importantes — mensagens longas com emojis são indexadas corretamente e as memórias consolidadas ficam mais bem integradas à busca.

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.95 (`fc263fa`)
- ícone do card do Sono do Modelo agora reflete o estado — dormindo 😴 quando o pipeline está rodando (Sleeping) e acordado 🧠 quando parado (Waked) (`59075d6`)

#### 🐛 Correções
- diagnóstico do emocional — o runEmotional agora registra o primeiro erro (chamada LLM ou resposta inválida) no relatório do run, e AGENTS.md ganha a regra de que o Ollama é SEMPRE o do container (ai-bridge-rag), nunca um instalado no PC (`f7d4f0d`)
- re-embedding das consolidadas — o erro do GenerateEmbedding era ignorado (emb, _ = ...) e gravava vetor nil; agora trata o erro e re-tenta no próximo run (`ff40ef3`)
- truncamento de embedding por RUNAS (não bytes) — mensagens Telegram com emojis tinham o UTF-8 quebrado no corte de 500 bytes, causando HTTP 500 no Ollama e deixando 23 mensagens sem indexação (`c713e6b`)


---


## Release - v2.3.94
### 📣 Apresentação da Atualização

**Resumo:** O Sono do Modelo ficou mais completo e preciso: memórias longas agora são indexadas corretamente, e a junção de memórias parecidas não deixa mais registros duplicados.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.94 (`f644bd7`)

#### 🐛 Correções
- deduplicação na fusão de memórias — prompt reforçado (1 memória por sub-assunto, sem variações) e dedup defensivo por similaridade de bigramas (≥0.80) que impede o LLM de criar consolidadas quase-idênticas no mesmo cluster (`9fde636`)
- embeddings de mensagens longas — o all-minilm aceita ~512 tokens (600 chars) e retorna HTTP 500 acima disso, deixando mensagens longas sem indexação e sem re-embedding das consolidadas; agora o GenerateEmbedding trunca para 500 chars com margem segura (`5825a89`)


---


## Release - v2.3.93
### 📣 Apresentação da Atualização

**Resumo:** A instalação dos serviços ficou muito mais tranquila para quem está começando: o AI Bridge agora instala o Docker Desktop sozinho (quando necessário), com mensagens claras e amigáveis. E o botão de atualizar passou a verificar novas versões do aplicativo.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.93 (`c190a9e`)
- experiência de instalação mais amigável — mensagem clara com link de download do Docker Desktop quando a instalação automática (winget) falha (e abre o navegador), botão Refresh agora verifica novas versões com trava anti-flood (60s) sem recarregar a tela (`072214b`)

#### 🐛 Correções
- instalação do Docker Desktop confiável no Windows 11 — instalação assíncrona em segundo plano (sem travar a UI), detecção robusta do winget (PATH + caminhos padrão), janela visível para aceitar o UAC e acompanhar, timeout de 15 min para o download e evento de resultado que atualiza a UI ao terminar (`96ec484`)


---


## Release - v2.3.92
### 📣 Apresentação da Atualização

**Resumo:** O Sono do Modelo ficou mais confiável e completo: o modo de simulação não altera mais as memórias, e o sistema agora recupera automaticamente as memórias que ficaram sem processamento — deixando a busca por lembranças muito mais completa.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.92 (`b1abc6a`)

#### 🐛 Correções
- card do Sono do Modelo sem o item Status (o badge do card já exibe Sleeping/Waked) (`8f9d8d4`)


---


## Release - v2.3.91
### 📣 Apresentação da Atualização

**Resumo:** O AI Bridge agora fala a língua do mundo: a interface padrão é em inglês, com traduções completas para português, espanhol, francês, alemão, chinês e russo. Ajustes de organização e visual também chegaram.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.91 (`05f044f`)
- i18n completo do Sono do Modelo (inglês oficial + 8 idiomas), corrige chaves do token/sync que só existiam no pt-BR, default do idioma agora 'en', card do sono na primeira coluna (à esquerda do WhatsApp) sem o item Modelo, fix do switch de Local Tools, skill de i18n e instrução no AGENTS.md (`7eb8762`)


---


## Release - v2.3.90
### 📣 Apresentação da Atualização

**Resumo:** Pequenos ajustes de visual no AI Bridge: o card do Sono do Modelo ficou mais limpo e organizado, e as barras de rolagem do aplicativo ganharam o visual escuro do próprio app.

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.90 (`9ad6a12`)

#### 🔧 Manutenção / Refatoração
- scrollbar global estilizada (dark glass, gradiente azul/ciano) — combina com o tema do app (`04412b5`)

#### 🐛 Correções
- card do Sono do Modelo enxuto — remove 'Memórias no banco' e 'Horário do sono' e empilha as informações em linhas (sem overflow) (`d309dd6`)

#### 📚 Documentação
- documentação completa do Sono do Modelo — estado implementado no NIGHTLY_MEMORY_CONSOLIDATION.md, skill nightly-consolidation para agentes e lição das aspas no publish patch no AGENTS.md (`740c417`)


---


## Release - v2.3.89
### 📣 Apresentação da Atualização

**Resumo:** O AI Bridge agora mostra o Sono do Modelo na tela de status: quando o modelo dorme (de madrugada, com a máquina parada), ele organiza as memórias sozinho — e você acompanha tudo pelo card, com botões para reiniciar ou reinstalar.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.89 (`e1e88ae`)
- card 'Sono do Modelo' na tela Services Status (Sleeping/Waked, memórias trabalhadas, botões reinstall/restart) e Install de serviços passa a baixar o modelo LLM de processamento (`a6f3ed3`)

#### 🐛 Correções
- robustez da consolidação noturna — aborta runs órfãos de processos interrompidos, scheduler com janela de horário + idle (window/always/never), seletor de modelo 3B/7B e faixa de horário na tela Settings (`f4467b4`)


---


## Release - v2.3.88
### 📣 Apresentação da Atualização

**Resumo:** O AI Bridge agora organiza suas memórias de longo prazo sozinho, durante a madrugada, enquanto a máquina está ociosa: junta conversas que dizem a mesma coisa, remove registros corrompidos e melhora o contexto e o tom emocional de cada memória.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.88 (`8890441`)
- módulo de consolidação noturna de memórias (Fase 2) — pipeline de eliminação/dedup/fusão/re-embedding com carga emocional, API local, actions WebSocket e agendador diário com gate de ociosidade (`b3f0af7`)

#### 📚 Documentação
- design do módulo de consolidação noturna de memórias (Fase 1) (`51bf3ca`)


---


## Release - v2.3.87
### 📣 Apresentação da Atualização

**Resumo:** O painel do AI Bridge agora permite controlar as ferramentas locais (informações do sistema e descoberta de dispositivos IoT) diretamente pela tela, e a aba de dispositivos IoT passou a mostrar os equipamentos reais da sua rede local.\n\n**Destaques:**\n- Nova tela de Ferramentas Locais: ative ou desative as ferramentas do assistente (Sistema e IoT) com um clique\n- Varredura real de dispositivos: a aba Dispositivos IoT agora encontra os equipamentos da sua rede (ESP32, brokers MQTT, câmeras etc.) com IP, nome e portas abertas\n- Informações do sistema mais completas: nome do computador e tempo de atividade (uptime) também são informados ao assistente\n- Removida uma ferramenta duplicada de WhatsApp — o envio de mensagens continua funcionando normalmente

### 📋 Changelog da Versão

**Total:** 5 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.87 (`2fbdf20`)
- UI dinâmica das Ferramentas Locais e Dispositivos IoT — toggles reais via GetMCPTools/ToggleMCPTool e varredura via ScanIoTDevices, i18n em 7 idiomas (`fe552d5`)
- refina ferramentas locais MCP — system_info com hostname/uptime, iot_scan com hostname real via reverse DNS e remove whatsapp-notifier do registro (`5774638`)

#### 🐛 Correções
- cli.js localiza signtool automaticamente (Windows SDK) e aborta build/publish se a assinatura falhar — evita publicar binários sem assinatura silenciosamente (`642fa6a`)
- assina digitalmente os binários do release v2.3.86 (signtool + certificado AI-BRAIN Solutions) (`2c7a350`)


---


## Release - v2.3.86
### 📣 Apresentação da Atualização

**Resumo:** Esta atualização deixa o processo de atualização automática do AI Bridge muito mais discreto: as janelas escuras de comando que apareciam e fechavam rapidamente na tela durante a atualização foram eliminadas.\n\n**Destaques:**\n- Atualização automática sem janelas de comando piscando na tela\n- Certificado digital renovado para melhor reconhecimento do editor nas novas instalações

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.86 (`e5b4848`)

#### 🔧 Manutenção / Refatoração
- regenera certificado de desenvolvimento com O=AI-BRAIN Solutions — UAC exibe editor confiável quando o .crt é instalado (Trusted Root + Trusted Publishers) (`6eece61`)

#### 🐛 Correções
- updater não abre mais janelas de console durante a atualização — HideWindow em taskkill, tasklist, cmd /c start e instalador (`f0d117b`)


---


## Release - v2.3.85
### 📣 Apresentação da Atualização

**Resumo:** O assistente agora também usa ferramentas que rodam no seu computador (via AI Bridge), como consultar informações do sistema e descobrir dispositivos IoT na sua rede local.\n\n**Destaques:**\n- Ferramentas locais do AI Bridge somadas às do servidor na resposta do modelo\n- Nova ferramenta de informações do sistema do usuário (CPU, memória RAM e disco)\n- Nova ferramenta de varredura de dispositivos IoT na rede local\n- Integração 100% via WebSocket, sem abrir portas

### 📋 Changelog da Versão

**Total:** 4 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.85 (`cccb558`)
- servidor MCP local do AI Bridge via WebSocket — actions mcp_list_tools/mcp_call_tool com ferramentas ai_bridge_system_info e ai_bridge_iot_scan (`a85d572`)

#### 🔧 Manutenção / Refatoração
- remove servidor FastMCP legado (internal/mcp/server.go) e referência mcpURL no monitor — comunicação com servidor é somente via WebSocket (`080d466`)

#### 🐛 Correções
- get_note_by_id não incrementava access_count — leitura por ID agora registra o acesso via UPDATE ... RETURNING (`4cc526e`)


---


## Release - v2.3.84
### 📣 Apresentação da Atualização

**Resumo:** Esta versão ajusta o processo de atualização automática: depois que a instalação é concluída, o aplicativo não é mais reaberto sozinho — o atualizador aguarda você confirmar o fim da atualização para abrir o AI Bridge.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.84 (`4668185`)

#### 🐛 Correções
- updater não reabre a aplicação automaticamente — aguarda o clique em OK no modal de conclusão (`57d7030`)

#### 🔧 Manutenção / Refatoração
- remove binários de teste/dev do rastreamento git (build/bin/*-test, *-prodtest, *-signed, *-tagtest) — ~52MB de artefatos não versionáveis (`8d70a8c`)


---


## Release - v2.3.83
### 📣 Apresentação da Atualização

**Resumo:** Esta versão corrige a inicialização dos serviços locais (banco de memórias, IA local e WhatsApp) ao abrir o aplicativo: os containers agora sobem automaticamente junto com o AI Bridge, sem precisar instalá-los manualmente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.83 (`c430ad7`)

#### 🐛 Correções
- inicializa containers dos serviços ao abrir a aplicação (docker compose up sem atualizador automático) (`03478f4`)


---


## Release - v2.3.82
### 📣 Apresentação da Atualização

**Resumo:** Esta versão deixa a atualização automática mais segura: o aplicativo agora espera ser fechado por completo antes de instalar a nova versão, evitando falhas no meio do processo.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.82 (`cf4e655`)

#### 🐛 Correções
- updater aguarda processo ai-bridge terminar antes de instalar + ReopenApp em modo GUI + remove Run entry do setup.iss (`189b286`)


---


## Release - v2.3.81
### 📣 Apresentação da Atualização

**Resumo:** Esta versão resolve um problema que impedia o assistente de acessar suas memórias e o histórico de conversas durante as interações de voz e texto.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.81 (`bbe0471`)

#### 🐛 Correções
- sessões de memória via WebSocket com contagem de mensagens e metadata atualizado (`52a4889`)
- ChatSession enriquecido com interaction_count e end_time via subquery LEFT JOIN (`33542f7`)


---


## Release - v2.3.80
### 📣 Apresentação da Atualização

**Resumo:** Remo??o da recria??o for?ada autom?tica de containers durante a inicializa??o normal do aplicativo.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.80 (`277d1e5`)


---


## Release - v2.3.79
### 📣 Apresentação da Atualização

**Resumo:** Release v2.3.79 para valida??o do novo modal interativo de atualiza??o de containers Docker em tempo real.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.79 (`2f43d23`)


---


## Release - v2.3.78
### 📣 Apresentação da Atualização

**Resumo:** Recria??o e atualiza??o dos containers dos servi?os integrada ao modal do Auto-Updater com status em tempo real.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.78 (`430aa80`)


---


## Release - v2.3.77
### 📣 Apresentação da Atualização

**Resumo:** Corre??o na migra??o do modelo Ollama para all-minilm e recria??o for?ada de containers Docker nas atualiza??es.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.77 (`ea5174c`)


---


## Release - v2.3.76
### 📣 Apresentação da Atualização

**Resumo:** Corre??o no tempo limite do cliente HTTP do Ollama (60s) e intelig?ncia na busca de palavras-chave no PostgreSQL.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.76 (`ecb3aa3`)


---


## Release - v2.3.75
### 📣 Apresentação da Atualização

**Resumo:** Busca vetorial s?ncrona garantida com Ollama (at? 30s) para garantir 100% de precis?o sem?ntica no RAG do AI Bridge Desktop.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.75 (`fa0712f`)


---


## Release - v2.3.74
### 📣 Apresentação da Atualização

**Resumo:** Otimiza??o ultrarr?pida do tempo de resposta da busca RAG no AI Bridge Desktop (m?ximo 2.5s).

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.74 (`dfbd530`)


---


## Release - v2.3.73
### 📣 Apresentação da Atualização

**Resumo:** Corre??o cr?tica na busca de mensagens no PostgreSQL quando o vetor de embedding n?o est? presente.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.73 (`ca3087f`)


---


## Release - v2.3.72
### 📣 Apresentação da Atualização

**Resumo:** Arquitetura de Fila Sequencial Ass?ncrona para grava??o e vetoriza??o de mensagens sem concorr?ncia no Ollama.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.72 (`846cf56`)


---


## Release - v2.3.71
### 📣 Apresentação da Atualização

**Resumo:** Ajuste fino nos limites de tempo do Ollama para grava??o e busca de mem?rias vetoriais em hardware modesto.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.71 (`5f93c86`)


---


## Release - v2.3.70
### 📣 Apresentação da Atualização

**Resumo:** Otimiza??o nos tempos de resposta da gera??o de embeddings Ollama no RAG do AI Bridge Desktop.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.70 (`c87db1e`)


---


## Release - v2.3.69
### 📣 Apresentação da Atualização

**Resumo:** Garantia de migra??o din?mica de schema no banco de dados do AI Bridge Desktop e sincroniza??o autom?tica de containers Docker.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.69 (`1784804`)


---


## Release - v2.3.68
### 📣 Apresentação da Atualização

**Resumo:** Otimiza??o na intelig?ncia de busca por palavras-chave na mem?ria de longo prazo do AI Bridge Desktop, suportando pesquisas com pontua??o (como Vetor/Hermann/RAG), barras e pesquisas sem filtro.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.68 (`d7fe666`)


---


## Release - v2.3.67
### 📣 Apresentação da Atualização

**Resumo:** Corre??o na busca de mem?rias por ID de sess?o no AI Bridge Desktop, adicionando suporte a prefixos curtos (ex: 289b6d63) e ampliando o tempo limite de embedding RAG para 10s.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.67 (`bcab0a1`)


---


## Release - v2.3.65
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza??o implementa o suporte a buscas por palavras compostas no RAG de mensagens de chat, permitindo resgatar conversas de sess?es anteriores mesmo sem embedding pr?-calculado.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.65 (`573c748`)


---


## Release - v2.3.64
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza??o traz a busca aprimorada multi-palavras para mem?rias de longo prazo e garante o funcionamento correto da inje??o RAG.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.64 (`ee95562`)


---


## Release - v2.3.63
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza??o traz melhorias na persist?ncia de anota??es e na busca vetorial RAG do AI Bridge, priorizando a mem?ria de conversas passadas e tratando anota??es como bloco de notas secund?rio.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.63 (`61a263a`)

#### 🐛 Correções
- persistencia de anotacoes com fallback de tags e busca vetorial prioritaria de LTM no RAG (`6a12cdf`)


---


## Release - v2.3.62
### 📣 Apresentação da Atualização

**Resumo:** Esta atualiza??o corrige a busca de anota??es, a mem?ria de longo prazo e a inje??o de contexto RAG no AI Bridge, garantindo a recupera??o perfeita do hist?rico do assistente.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.62 (`a0d408c`)

#### 🐛 Correções
- correcao de scan de tags TEXT[], cast de interval no postgres e filtros de data em memorias/rag (`81bba03`)


---


## Release - v2.3.61
### 📣 Apresentação da Atualização

**Resumo:** Correção na atualização automática do AI Bridge — a atualização podia falhar no meio do processo e agora é concluída com muito mais confiabilidade, além de gerar um log de diagnóstico caso algo dê errado.

### 📋 Changelog da Versão

**Total:** 3 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.61 (`a641b64`)

#### 🐛 Correções
- instalador fecha o updater antigo durante a transicao (exit code 5) (`e5c4dfd`)
- auto-updater falhava com exit status 5 ao tentar atualizar (updater.exe em uso pelo proprio processo) (`1351202`)


---


## Release - v2.3.60
### 📣 Apresentação da Atualização

**Resumo:** Correção no painel de atualizações para exibir o histórico de alterações de forma limpa e sem duplicações.

### 📋 Changelog da Versão

**Total:** 2 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- updates for release v2.3.60 (`88a059f`)

#### 🐛 Correções
- corrigir duplicacao do texto de apresentacao no changelog da versao nas clis e instrucoes (`58625d3`)


---


## Release - v2.3.59
### 📣 Apresentação da Atualização

Correcoes na tela Services Status e na instalacao dos containers: o PostgreSQL agora e validado com pg_isready dentro do container (antes usava checagem HTTP, que o postgres nao fala — a instalacao falhava sempre no postgres e parava os demais servicos); as memorias e notas voltam a ser exibidas (reconexao automatica ao banco quando ele fica pronto apos o app iniciar); e os valores dinamicos (latencia, memorias, notas, modelo embed, QR Code e tools) atualizam em paralelo a cada 15 segundos, independente do estado dos containers.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- Correcoes na tela Services Status e na instalacao dos containers: o PostgreSQL agora e validado com pg_isready dentro do container (antes usava checagem HTTP, que o postgres nao fala — a instalacao falhava sempre no postgres e parava os demais servicos); as memorias e notas voltam a ser exibidas (reconexao automatica ao banco quando ele fica pronto apos o app iniciar); e os valores dinamicos (latencia, memorias, notas, modelo embed, QR Code e tools) atualizam em paralelo a cada 15 segundos, independente do estado dos containers. (`950c3d6`)


---


## Release - v2.3.58
### 📣 Apresentação da Atualização

Correcoes no ciclo de atualizacao e desinstalacao: o desinstalador agora para, remove os containers dos servicos e limpa as imagens no Docker do usuario; ao fechar o aplicativo, os containers sao parados antes de sair com um aviso ao usuario; corrigida a geracao do changelog nas CLIs (ai-bridge e ai-brain) — as alteracoes agora sao comitadas antes de listar os commits acumulados, entao o changelog da publicacao passa a ser exibido corretamente no painel.

### 📋 Changelog da Versão

**Total:** 1 alteração(ões) acumulada(s) desde a última release.

#### ✨ Novidades
- Correcoes no ciclo de atualizacao e desinstalacao: o desinstalador agora para, remove os containers dos servicos e limpa as imagens no Docker do usuario; ao fechar o aplicativo, os containers sao parados antes de sair com um aviso ao usuario; corrigida a geracao do changelog nas CLIs (ai-bridge e ai-brain) — as alteracoes agora sao comitadas antes de listar os commits acumulados, entao o changelog da publicacao passa a ser exibido corretamente no painel. (`11273c0`)


---


## Release - v2.3.57
### 📣 Apresentação da Atualização

Correcao do auto-updater: o instalador (Inno Setup 6) fechava por padrao (CloseApplications) o updater.exe em execucao durante a instalacao, encerrando o atualizador antes de exibir o aviso de conclusao e reabrir o aplicativo — agora o instalador fecha apenas o ai-bridge.exe (CloseApplicationsFilter) e o updater sobrevive para concluir o fluxo. O aplicativo tambem passou a atualizar os containers dos servicos na inicializacao (docker compose pull + up -d em background) quando os servicos ja estao instalados, garantindo que os containers do usuario recebam novas imagens e configuracoes mesmo quando a atualizacao veio de um updater antigo sem essa logica.

### 📋 Changelog da Versão

Nenhum commit acumulado desde a última release (alterações descritas na apresentação).


---


## Release - v2.3.56
### 📣 Apresentação da Atualização

Correcao do QR Code no painel do ai-brain: o WAHA v3 mudou a API (rota GET /api/{session}/auth/qr devolvendo os bytes do PNG com Accept image/png) e o ai-bridge agora usa a rota correta, fazendo o QR de pareamento aparecer no painel. O atualizador agora tambem atualiza os containers dos servicos apos a atualizacao do aplicativo (docker compose pull + up -d), garantindo que os containers do usuario recebam novas imagens e configuracoes (dados preservados nos bind mounts do AppData).

### 📋 Changelog da Versão

Nenhum commit acumulado desde a última release (alterações descritas na apresentação).


---


## Release - v2.3.55
### 📣 Apresentação da Atualização

Fix QR Code no painel do servidor ai-brain: o ai-bridge agora responde a acao whatsapp_qr via WebSocket, buscando a imagem do QR no WAHA (GET /api/sessions/{session}/qr), e o whatsapp_status retorna o estado real da sessao (WORKING/CONNECTED) em vez do mock; o endpoint qr-image do ai-brain passou a decodificar o base64 e devolver a imagem PNG, corrigindo o QR code quebrado no painel.

### 📋 Changelog da Versão

Nenhum commit acumulado desde a última release (alterações descritas na apresentação).


---


## Release - v2.3.54
### 📣 Apresentação da Atualização

Correções visuais e do atualizador: splash screen transparente mesmo com a janela ativa e sem bordas; janela do auto-updater sem titlebar e sem cantos arredondados (superfície única); cards de Services Status com valores dinâmicos (Latência, Memories/Notes, Modelo Embed, QR Code e Tools Ativas); updater roda em processo independente do app principal para exibir a mensagem de sucesso e reabrir o aplicativo.

### 📋 Changelog da Versão

Nenhum commit acumulado desde a última release (alterações descritas na apresentação).


---


## Release - v2.3.53
### 📣 Apresentação da Atualização

**Resumo:** O painel ganhou a secao Atualizacoes do AI-Bridge na aba AI-Bridge, recebendo as notas de atualizacao publicadas pela CLI do projeto ai-bridge, e o changelog do AI-BRAIN agora apresenta a mensagem da versao seguida do changelog de commits.

### 📋 Changelog da Versão

Nenhum commit acumulado desde a última release (alterações descritas na apresentação).


---