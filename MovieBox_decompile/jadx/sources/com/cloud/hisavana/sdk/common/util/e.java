package com.cloud.hisavana.sdk.common.util;

import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.b4;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f21568a = new e();

    private static final ConcurrentHashMap f21569b = new ConcurrentHashMap();

    private static final Handler f21570c = new Handler(Looper.getMainLooper());

    private e() {
    }

    private final void c(String str, long j10) {
        try {
            ConcurrentHashMap concurrentHashMap = f21569b;
            WebView webView = (WebView) concurrentHashMap.get(Long.valueOf(j10));
            if (webView == null) {
                b4.b().d("AdxTrackWebviewManager", "create trackwebview now, key->" + j10);
                webView = new WebView(com.cloud.sdk.commonutil.util.e.a());
                webView.setWebViewClient(new WebViewClient());
                webView.getSettings().setJavaScriptEnabled(true);
                concurrentHashMap.put(Long.valueOf(j10), webView);
            }
            b4.b().d("AdxTrackWebviewManager", "adx track, load url: " + str);
            webView.loadUrl(str);
        } catch (Throwable unused) {
        }
    }

    public static final void e(WebView webView, long j10) {
        f21568a.f(webView, j10);
    }

    private final void f(WebView webView, long j10) {
        try {
            b4.b().d("AdxTrackWebviewManager", "destroy trackwebview now, key->" + j10);
            if (webView != null) {
                webView.clearHistory();
                webView.clearCache(true);
                webView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
                webView.freeMemory();
                webView.destroy();
            }
        } catch (Throwable unused) {
        }
    }

    public static final void h(String url, long j10) {
        Intrinsics.h(url, "$url");
        f21568a.c(url, j10);
    }

    public final void d(final long j10) {
        try {
            final WebView webView = (WebView) f21569b.remove(Long.valueOf(j10));
            if (webView != null) {
                b4.b().d("AdxTrackWebviewManager", "delay 10 seconds to destroy the trackWebview,key: ->" + j10);
                f21570c.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        e.e(webView, j10);
                    }
                }, 10000L);
            }
        } catch (Throwable unused) {
        }
    }

    public final void g(final long j10, final String url) {
        Intrinsics.h(url, "url");
        f21570c.post(new Runnable() {
            @Override
            public final void run() {
                e.h(url, j10);
            }
        });
    }
}
