package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.webkit.WebView;
import defpackage.hvh;
import defpackage.ruh;
import defpackage.rvh;
import defpackage.suh;
import defpackage.tvh;
import defpackage.ubc;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public final class e6 extends rvh {
    public WebView e;
    public Long f;
    public final Map g;

    public e6(String str, Map map, String str2) {
        super(str);
        this.f = null;
        this.g = map;
    }

    @Override
    public final void c() {
        super.c();
        new Handler().postDelayed(new zzflk(this), Math.max(4000 - (this.f == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.e = null;
    }

    @Override
    public final void i(suh suhVar, ruh ruhVar) {
        JSONObject jSONObject = new JSONObject();
        Map mapI = ruhVar.i();
        Iterator it = mapI.keySet().iterator();
        if (it.hasNext()) {
            ubc.a(mapI.get((String) it.next()));
            throw null;
        }
        j(suhVar, ruhVar, jSONObject);
    }

    @Override
    public final void o() {
        WebView webView = new WebView(hvh.b().a());
        this.e = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.e.getSettings().setAllowContentAccess(false);
        this.e.getSettings().setAllowFileAccess(false);
        this.e.setWebViewClient(new tvh(this));
        n(this.e);
        d6.k(this.e, null);
        Map map = this.g;
        Iterator it = map.keySet().iterator();
        if (it.hasNext()) {
            ubc.a(map.get((String) it.next()));
            throw null;
        }
        this.f = Long.valueOf(System.nanoTime());
    }
}
