package com.google.android.gms.ads.nonagon.signalgeneration;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.UiThread;
import defpackage.cye;
import defpackage.e0f;
import defpackage.g8i;
import defpackage.p4f;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;

public final class zzj extends p4f {
    public final WebView a;
    public final zzf b;
    public final Executor c;
    public WebViewClient d;

    public zzj(WebView webView, zzf zzfVar, @UiThread g8i g8iVar) {
        this.a = webView;
        this.b = zzfVar;
        this.c = g8iVar;
    }

    public static void zza(zzj zzjVar) {
        try {
            com.google.android.gms.ads.internal.zzv.zzq();
            WebViewClient webViewClient = zzjVar.a.getWebViewClient();
            if (webViewClient == zzjVar) {
                return;
            }
            if (webViewClient != null) {
                zzjVar.d = webViewClient;
            }
            zzjVar.a.setWebViewClient(zzjVar);
            zzjVar.b();
        } catch (IllegalStateException unused) {
        }
    }

    @Override
    public final WebViewClient a() {
        return this.d;
    }

    public final void b() {
        this.a.evaluateJavascript(String.format(Locale.getDefault(), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.S9), this.b.zza()), null);
    }

    public final boolean c() {
        if (!((Boolean) e0f.a.e()).booleanValue()) {
            return false;
        }
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        if (allStackTraces == null || !allStackTraces.containsKey(Thread.currentThread())) {
            return true;
        }
        boolean z = false;
        boolean z2 = false;
        for (StackTraceElement stackTraceElement : allStackTraces.get(Thread.currentThread())) {
            if (stackTraceElement.getClassName().contains(zzj.class.getName())) {
                if (z && z2) {
                    return true;
                }
                z = true;
            } else if (z) {
                z2 = true;
            }
        }
        return false;
    }

    @Override
    public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
        if (c()) {
            return;
        }
        super.doUpdateVisitedHistory(webView, str, z);
    }

    @Override
    public final void onFormResubmission(WebView webView, Message message, Message message2) {
        if (c()) {
            return;
        }
        super.onFormResubmission(webView, message, message2);
    }

    @Override
    public final void onLoadResource(WebView webView, String str) {
        if (c()) {
            return;
        }
        super.onLoadResource(webView, str);
    }

    @Override
    @RequiresApi(api = 23)
    public final void onPageCommitVisible(WebView webView, String str) {
        if (c()) {
            return;
        }
        super.onPageCommitVisible(webView, str);
    }

    @Override
    public final void onPageFinished(WebView webView, String str) {
        if (c()) {
            return;
        }
        b();
        super.onPageFinished(webView, str);
    }

    @Override
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (c()) {
            return;
        }
        b();
        super.onPageStarted(webView, str, bitmap);
    }

    @Override
    public final void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
        if (c()) {
            return;
        }
        super.onReceivedClientCertRequest(webView, clientCertRequest);
    }

    @Override
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        if (c()) {
            return;
        }
        super.onReceivedError(webView, i, str, str2);
    }

    @Override
    public final void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        if (c()) {
            return;
        }
        super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
    }

    @Override
    @RequiresApi(api = 23)
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        if (c()) {
            return;
        }
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override
    public final void onReceivedLoginRequest(WebView webView, String str, @Nullable String str2, String str3) {
        if (c()) {
            return;
        }
        super.onReceivedLoginRequest(webView, str, str2, str3);
    }

    @Override
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (c()) {
            return;
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override
    @RequiresApi(api = 26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (c()) {
            return false;
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override
    @RequiresApi(api = 27)
    public final void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i, SafeBrowsingResponse safeBrowsingResponse) {
        if (c()) {
            return;
        }
        super.onSafeBrowsingHit(webView, webResourceRequest, i, safeBrowsingResponse);
    }

    @Override
    public final void onScaleChanged(WebView webView, float f, float f2) {
        if (c()) {
            return;
        }
        super.onScaleChanged(webView, f, f2);
    }

    @Override
    public final void onTooManyRedirects(WebView webView, Message message, Message message2) {
        if (c()) {
            return;
        }
        super.onTooManyRedirects(webView, message, message2);
    }

    @Override
    public final void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        if (c()) {
            return;
        }
        super.onUnhandledKeyEvent(webView, keyEvent);
    }

    @Override
    @Nullable
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (c()) {
            return null;
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        if (c()) {
            return false;
        }
        return super.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override
    @RequiresApi(api = 24)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (c()) {
            return false;
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    public final void zzb() {
        this.c.execute(new Runnable() {
            @Override
            public final void run() {
                zzj.zza(this.zza);
            }
        });
    }

    @Override
    @RequiresApi(api = 23)
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (c()) {
            return;
        }
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override
    @Nullable
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (c()) {
            return null;
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (c()) {
            return false;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
