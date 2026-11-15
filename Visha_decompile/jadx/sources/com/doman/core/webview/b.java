package com.doman.core.webview;

import android.content.SharedPreferences;
import android.webkit.WebSettings;
import com.doman.core.CoreMain;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;

public final class b {
    private static b c = new b();
    public String a;
    private SharedPreferences.OnSharedPreferenceChangeListener d = new SharedPreferences.OnSharedPreferenceChangeListener() {
        @Override
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            b.a(b.this);
        }
    };
    private LinkedList<WeakReference<WebSettings>> b = new LinkedList<>();

    private b() {
    }

    public static b a() {
        return c;
    }

    public static void a(b bVar) {
        synchronized (bVar.b) {
            try {
                Iterator<WeakReference<WebSettings>> it = bVar.b.iterator();
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
