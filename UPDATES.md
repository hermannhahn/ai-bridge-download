# Histórico de Atualizações - v2.3.53

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