package com.fongmi.android.tv.ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

import androidx.appcompat.app.AppCompatActivity;

/**
 * Activity transparente para receber intents de URLs externas.
 * Redireciona para VideoActivity para reprodução.
 */
public class ExternalPlayActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        handleIntent(getIntent());
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        handleIntent(intent);
    }

    private void handleIntent(Intent intent) {
        if (intent == null) {
            finish();
            return;
        }

        String action = intent.getAction();
        String url = null;

        // ACTION_VIEW - URL veio de clique em link
        if (Intent.ACTION_VIEW.equals(action)) {
            Uri data = intent.getData();
            if (data != null) {
                url = data.toString();
            }
        }
        // ACTION_SEND - URL veio de compartilhamento
        else if (Intent.ACTION_SEND.equals(action)) {
            String text = intent.getStringExtra(Intent.EXTRA_TEXT);
            if (!TextUtils.isEmpty(text)) {
                // Extrair URL do texto
                url = extractUrl(text);
            }
        }

        if (TextUtils.isEmpty(url)) {
            finish();
            return;
        }

        // Abrir VideoActivity com a URL
        playUrl(url);
    }

    private void playUrl(String url) {
        VideoActivity.start(this, url);
        finish();
    }

    private String extractUrl(String text) {
        // Simples extração de URL - procura por http
        String[] words = text.split("\\s+");
        for (String word : words) {
            if (word.startsWith("http://") || word.startsWith("https://")) {
                return word;
            }
        }
        return text;
    }
}
