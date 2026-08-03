# Histórico de Atualizações - v2.3.53

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