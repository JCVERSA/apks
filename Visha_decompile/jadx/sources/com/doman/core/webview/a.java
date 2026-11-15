package com.doman.core.webview;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.doman.core.CoreMain;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;

public final class a {
    private static a d = new a();
    private String a;
    private String c;
    private SharedPreferences.OnSharedPreferenceChangeListener e = new SharedPreferences.OnSharedPreferenceChangeListener() {
        @Override
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            a.a(a.this);
        }
    };
    private LinkedList<WeakReference<WebSettings>> b = new LinkedList<>();

    private a() {
    }

    public static a a() {
        return d;
    }

    public static void b() {
        try {
            CookieManager.getInstance().removeAllCookie();
        } catch (Exception unused) {
        }
    }

    private void b(WebView webView) {
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDefaultFontSize(16);
        settings.setDefaultFixedFontSize(13);
        settings.setNeedInitialFocus(false);
        settings.setSupportMultipleWindows(true);
        settings.setEnableSmoothTransition(true);
        settings.setAllowContentAccess(true);
        settings.setAppCacheEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setMixedContentMode(0);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setAllowFileAccessFromFileURLs(false);
        if (TextUtils.isEmpty(this.a)) {
            this.a = CoreMain.getInstance().getUA();
        }
        settings.setUserAgentString(this.a);
        settings.setTextZoom(100);
        settings.setAppCacheEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setCacheMode(-1);
        if (this.c == null) {
            this.c = CoreMain.getInstance().getContext().getDir("appcache", 0).getPath();
        }
        settings.setAppCachePath(this.c);
        settings.setDatabasePath(CoreMain.getInstance().getContext().getDir("databases", 0).getPath());
        settings.setGeolocationDatabasePath(CoreMain.getInstance().getContext().getDir("geolocation", 0).getPath());
        settings.setLoadsImagesAutomatically(true);
    }

    public final void a(WebView webView) {
        webView.setScrollbarFadingEnabled(true);
        webView.setScrollBarStyle(33554432);
        webView.setOverScrollMode(2);
        b(webView);
    }

    public static void a(a aVar) {
        synchronized (aVar.b) {
            try {
                Iterator<WeakReference<WebSettings>> it = aVar.b.iterator();
                while (it.hasNext()) {
                    WebSettings webSettings = it.next().get();
                    if (webSettings == null) {
                        it.remove();
                    } else {
                        webSettings.setTextZoom(100);
                        webSettings.setUserAgentString(CoreMain.getInstance().getUA());
                        webSettings.setGeolocationEnabled(true);
                        webSettings.setLoadsImagesAutomatically(true);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
