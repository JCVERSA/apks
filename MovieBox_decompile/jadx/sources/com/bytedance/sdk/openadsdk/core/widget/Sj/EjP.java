package com.bytedance.sdk.openadsdk.core.widget.Sj;

import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.EjP.Ym;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.utils.TzV;

public class EjP extends WebChromeClient {
    private static final String Sj = WebChromeClient.class.getSimpleName();
    private com.bytedance.sdk.openadsdk.common.EjP EjP;
    private Ym TKC;
    private final Yf sP;

    public EjP(Yf yf2) {
        this.sP = yf2;
    }

    @Override
    public void onConsoleMessage(String str, int i10, String str2) {
        if (!TextUtils.isEmpty(str)) {
            Sj(str);
        }
        super.onConsoleMessage(str, i10, str2);
    }

    @Override
    public void onProgressChanged(WebView webView, int i10) {
        super.onProgressChanged(webView, i10);
        Ym ym2 = this.TKC;
        if (ym2 != null) {
            ym2.Sj(webView, i10);
        }
        com.bytedance.sdk.openadsdk.common.EjP ejP = this.EjP;
        if (ejP != null) {
            ejP.Sj(webView, i10);
        }
    }

    @Override
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        super.onShowCustomView(view, customViewCallback);
    }

    private boolean Sj(@NonNull final String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (str.regionMatches(true, 0, "bytedance:", 0, 10)) {
                sef.TKC().post(new Runnable() {
                    @Override
                    public void run() {
                        TzV.Sj(Uri.parse(str), EjP.this.sP);
                    }
                });
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public EjP(Yf yf2, Ym ym2, com.bytedance.sdk.openadsdk.common.EjP ejP) {
        this(yf2, ym2);
        this.EjP = ejP;
    }

    @Override
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage == null || TextUtils.isEmpty(consoleMessage.message()) || !Sj(consoleMessage.message())) {
            return super.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    public EjP(Yf yf2, Ym ym2) {
        this.sP = yf2;
        this.TKC = ym2;
    }
}
