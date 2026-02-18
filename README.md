# 🎮 FongMi TV - Versão com Suporte a Intents

Este repositório compila automaticamente o [FongMi/TV](https://github.com/FongMi/TV) com suporte adicional para abrir streams M3U8 diretamente de navegadores e outros apps.

## 📱 O que este patch faz

Adiciona suporte para:
- Abrir URLs `.m3u8` e `.m3u` diretamente de navegadores
- Receber URLs compartilhadas de outros apps
- Funciona como o VLC - clique em um link e abre direto

## 🚀 Baixar APK

1. Vá na aba **[Actions](../../actions)**
2. Clique no workflow mais recente
3. Role até **Artifacts** e baixe `fongmi-tv-intent-debug`
4. Instale no seu Android TV Box

## 📖 Como Usar

### No seu app/site IPTV (Android):
```javascript
const url = 'http://servidor:8080/live/user/pass/123.m3u8';

// Abrir direto no FongMi
window.location.href = `intent:${url}#Intent;action=android.intent.action.VIEW;type=video/*;package=com.fongmi.android.tv;end`;
```

### Compartilhamento:
1. Copie a URL do stream
2. Compartilhar → FongMi TV
3. Reproduz automaticamente

## ✅ Vantagens

| Recurso | FongMi | VLC |
|---------|--------|-----|
| Estabilidade em TV Box | ⭐⭐⭐⭐⭐ | ⭐⭐⭐ |
| Interface para TV | ⭐⭐⭐⭐⭐ | ⭐⭐ |
| ExoPlayer nativo | ✅ | ❌ |
| Suporte a danmaku | ✅ | ❌ |

## 🔧 Estrutura

```
fongmi-intent-patch/
├── AndroidManifest.xml      # Intent filters
├── ExternalPlayActivity.java # Activity que recebe URLs
└── ...

.github/workflows/
└── build.yml                # Compilação automática
```

## 📝 Créditos

- [FongMi/TV](https://github.com/FongMi/TV) - Player original
- Patch criado para uso com apps IPTV
