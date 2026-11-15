package com.bytedance.sdk.component.Sj;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

public class uP extends Sj {
    static final boolean TEQ = true;
    protected String Dq;
    protected WebView uA;

    protected void EjP() {
        this.uA.removeJavascriptInterface(this.Dq);
    }

    @Override
    protected Context Sj(TEQ teq) {
        Context context = teq.HiB;
        if (context != null) {
            return context;
        }
        WebView webView = teq.Sj;
        if (webView != null) {
            return webView.getContext();
        }
        throw new IllegalStateException("WebView cannot be null!");
    }

    @SuppressLint({"AddJavascriptInterface"})
    protected void TKC() {
        if (!TEQ && this.uA == null) {
            throw new AssertionError();
        }
        this.uA.addJavascriptInterface(this, this.Dq);
    }

    @Override
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }

    @Override
    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    protected void sP(TEQ teq) {
        this.uA = teq.Sj;
        this.Dq = teq.TKC;
        if (teq.sef) {
            return;
        }
        TKC();
    }

    @Override
    protected String Sj() {
        return this.uA.getUrl();
    }

    @Override
    protected void sP() {
        super.sP();
        EjP();
    }

    @Override
    protected void Sj(String str, uvD uvd) {
        if (uvd != null && !TextUtils.isEmpty(uvd.Dq)) {
            String str2 = uvd.Dq;
            Sj(str, String.format("javascript:(function(){   const iframe = document.querySelector(atob('%s'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, atob('%s'));   }})()", Base64.encodeToString(String.format("iframe[src=\"%s\"", str2).getBytes(), 2), str, Base64.encodeToString(str2.getBytes(), 2)));
            return;
        }
        super.Sj(str, uvd);
    }

    @Override
    protected void Sj(String str) {
        Sj(str, "javascript:" + this.Dq + "._handleMessageFromToutiao(" + str + ")");
    }

    private void Sj(String str, final String str2) {
        if (this.vS || TextUtils.isEmpty(str2)) {
            return;
        }
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                if (uP.this.vS) {
                    return;
                }
                try {
                    uP.this.uA.evaluateJavascript(str2, null);
                } catch (Throwable unused) {
                }
            }
        };
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.EjP.post(runnable);
        } else {
            runnable.run();
        }
    }
}
