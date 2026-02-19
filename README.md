# FongMi TV Minimalist - v7a Only Build

Fork de FongMi/TV otimizado para reprodução de M3U8 via intent externa.

## O que é esta versão?

Versão minimalista focada em **reproduzir links M3U8** recebidos via Android Intent. Ideal para uso com apps web como IPLINKS.

## Diferenças da versão original:

| Característica | Original | Esta versão |
|---------------|----------|-------------|
| Arquitetura | arm64-v8a + armeabi-v7a | **armeabi-v7a apenas** |
| APK Size | ~50-60MB | **~25-30MB** |
| Idiomas | Chinês + Inglês | **Inglês apenas** |
| Danmaku | Sim | **Removido** |
| Cast/Chromecast | Sim | **Removido** |
| Spiders chineses | Sim | **Removido** |
| P2P/Torrent | Sim | **Removido** |
| EPG | Sim | **Removido** |

## Configurações pré-definidas:

```
Buffer: 4 segundos (estável)
Tunnel: ON (hardware decoding)
Scale: 16:9 (TV padrão)
AAC Audio: ON (compatibilidade)
Update Check: OFF
Hot/Trending: OFF
Wallpaper: OFF
Incognito: ON
Background Play: OFF
Danmaku: OFF
```

## Como usar:

### 1. Instalar APK
Baixe o APK da [seção Actions](../../actions) e instale na TV Box.

### 2. Reproduzir via Intent
No seu app web (IPLINKS), clique no botão play. O Android mostrará o FongMi como opção.

### 3. Script "Imortal" (opcional)
Para evitar que a TV mate o app em segundo plano:

```bash
adb shell "cmd appops set com.fongmi.android.tv RUN_IN_BACKGROUND ignore"
adb shell "cmd appops set com.fongmi.android.tv RUN_ANY_IN_BACKGROUND ignore"
```

## Compatibilidade:

- ✅ TV Boxes Android 5.0+
- ✅ Dispositivos 32-bit (armeabi-v7a)
- ✅ Dispositivos 64-bit (arm64-v8a) - rodam apps 32-bit
- ✅ Smart TVs com Android TV

## Build automático:

O workflow é executado:
- A cada push na branch main
- Manualmente via Actions
- Semanalmente (domingo)

## Créditos:

- [FongMi/TV](https://github.com/FongMi/TV) - App original
- Baseado no branch `release` (versão estável)

## Licença:

Mesma licença do projeto original FongMi/TV.
