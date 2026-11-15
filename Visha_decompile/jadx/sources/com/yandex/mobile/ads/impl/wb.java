package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

public final class wb implements ch0 {
    private final gf1 a;
    private final List<zb> b;
    private xb c;

    public final class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            wb.this.a.b();
        }
    }

    public wb(gf1 gf1Var) {
        y45.j(gf1Var, "optOutRepository");
        this.a = gf1Var;
        this.b = a();
    }

    public final void a(String str) {
        y45.j(str, "url");
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            for (zb zbVar : this.b) {
                if (zbVar.a(scheme, host)) {
                    zbVar.a();
                    return;
                }
            }
        } catch (URISyntaxException unused) {
            sp0.f(new Object[0]);
        }
    }

    public final void a(xb xbVar) {
        y45.j(xbVar, "adtuneOptOutWebViewListener");
        this.c = xbVar;
    }

    private final List<zb> a() {
        return defpackage.x71.e(new fc("noInterestAd", new a()));
    }

    @Override
    public final void a(int i) {
        xb xbVar;
        if (!new dc().a(i) || (xbVar = this.c) == null) {
            return;
        }
        xbVar.a();
    }
}
