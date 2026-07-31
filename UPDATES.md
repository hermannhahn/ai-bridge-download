# Histórico de Atualizações - v2.3.53

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