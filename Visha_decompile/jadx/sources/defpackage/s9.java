package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.concurrent.ConcurrentHashMap;

public final class s9 {
    public static final s9 a = new s9();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static final Handler c = new Handler(Looper.getMainLooper());

    public static final void e(WebView webView, long j) {
        a.f(webView, j);
    }

    public static final void h(String str, long j) {
        y45.j(str, "$url");
        a.c(str, j);
    }

    public final void c(String str, long j) {
        try {
            ConcurrentHashMap concurrentHashMap = b;
            WebView webView = (WebView) concurrentHashMap.get(Long.valueOf(j));
            if (webView == null) {
                ikd.b().d("AdxTrackWebviewManager", "create trackwebview now, key->" + j);
                webView = new WebView(ul4.a());
                webView.setWebViewClient(new WebViewClient());
                webView.getSettings().setJavaScriptEnabled(true);
                concurrentHashMap.put(Long.valueOf(j), webView);
            }
            ikd.b().d("AdxTrackWebviewManager", "adx track, load url: " + str);
            webView.loadUrl(str);
        } catch (Throwable unused) {
        }
    }

    public final void d(final long j) {
        try {
            final WebView webView = (WebView) b.remove(Long.valueOf(j));
            if (webView != null) {
                ikd.b().d("AdxTrackWebviewManager", "delay 10 seconds to destroy the trackWebview,key: ->" + j);
                c.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        s9.e(webView, j);
                    }
                }, 10000L);
            }
        } catch (Throwable unused) {
        }
    }

    public final void f(WebView webView, long j) {
        try {
            ikd.b().d("AdxTrackWebviewManager", "destroy trackwebview now, key->" + j);
            if (webView != null) {
                webView.clearHistory();
                webView.clearCache(true);
                webView.loadUrl("about:blank");
                webView.freeMemory();
                webView.destroy();
            }
        } catch (Throwable unused) {
        }
    }

    public final void g(final long j, final String str) {
        y45.j(str, "url");
        c.post(new Runnable() {
            @Override
            public final void run() {
                s9.h(str, j);
            }
        });
    }
}
