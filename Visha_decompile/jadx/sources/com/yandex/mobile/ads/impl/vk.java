package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashMap;

public abstract class vk extends WebView {
    public final LinkedHashMap a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vk(Context context) {
        super(context);
        y45.j(context, "context");
        this.a = new LinkedHashMap();
        g();
    }

    private final String a(String str) {
        return str + c() + "<body style='margin:0; padding:0;'>";
    }

    private final void g() {
        WebSettings settings = getSettings();
        y45.i(settings, "getSettings(...)");
        settings.setAllowFileAccess(false);
        if (pa.a(11)) {
            settings.setAllowContentAccess(false);
            if (pa.a(16)) {
                settings.setAllowFileAccessFromFileURLs(false);
                settings.setAllowUniversalAccessFromFileURLs(false);
            }
        }
    }

    @Override
    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    public final void addJavascriptInterface(Object obj, String str) {
        y45.j(obj, "any");
        y45.j(str, "jsName");
        super.addJavascriptInterface(obj, str);
        this.a.put(str, obj);
    }

    public final void b(String str) {
        y45.j(str, "sourcePageData");
        loadDataWithBaseURL("https://yandex.ru", a(str), "text/html", "UTF-8", null);
    }

    public String c() {
        return "";
    }

    public void d() {
        wh2.a((ViewGroup) this);
        Iterator it = this.a.keySet().iterator();
        while (it.hasNext()) {
            removeJavascriptInterface((String) it.next());
        }
        this.a.clear();
        destroy();
        sp0.f(getClass().toString());
    }

    public final void e() {
        int i = oa.b;
        try {
            WebView.class.getDeclaredMethod("onPause", null).invoke(this, null);
        } catch (Exception unused) {
        }
        sp0.d(getClass().toString());
    }

    public final void f() {
        int i = oa.b;
        try {
            WebView.class.getDeclaredMethod("onResume", null).invoke(this, null);
        } catch (Exception unused) {
        }
        sp0.d(getClass().toString());
    }

    @Override
    public final void removeJavascriptInterface(String str) {
        y45.j(str, "jsName");
        if (pa.a(11)) {
            super.removeJavascriptInterface(str);
        }
    }

    public final void setDisplayZoomControls(boolean z) {
        if (pa.a(11)) {
            getSettings().setDisplayZoomControls(z);
        }
    }
}
