package com.transsion.xuanniao.account.help.view;

import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import defpackage.xo7;

public class d extends WebChromeClient {
    public final WebViewActivity a;

    public d(WebViewActivity webViewActivity) {
        this.a = webViewActivity;
    }

    @Override
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (WebViewActivity.a.a[consoleMessage.messageLevel().ordinal()] == 1) {
            StringBuilder sbA = xo7.a("webview==");
            sbA.append(consoleMessage.message());
            sbA.append(" level=");
            sbA.append(consoleMessage.messageLevel());
            Log.d("com.palm.id.log", sbA.toString());
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        if (i == 100) {
            this.a.h.setVisibility(8);
        } else {
            this.a.h.setVisibility(0);
            this.a.h.setProgress(i);
        }
    }
}
