package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

public final class cc implements ch0 {
    private final ub a;
    private final List<zb> b;
    private ec c;
    private String d;

    public final class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            cc.a(cc.this);
        }
    }

    public final class b implements Runnable {
        public b() {
        }

        @Override
        public final void run() {
            cc.this.a.a(cc.this.d);
        }
    }

    public final class c implements Runnable {
        public c() {
        }

        @Override
        public final void run() {
            ec ecVar = cc.this.c;
            if (ecVar != null) {
                ecVar.a();
            }
        }
    }

    public cc(ub ubVar) {
        y45.j(ubVar, "optOutRenderer");
        this.a = ubVar;
        this.b = a();
    }

    public static final void a(cc ccVar) {
        ec ecVar = ccVar.c;
        if (ecVar != null) {
            ecVar.b();
        }
    }

    public final void b(String str) {
        this.d = str;
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
            ec ecVar = this.c;
            if (ecVar != null) {
                ecVar.a(str);
            }
        } catch (URISyntaxException unused) {
            sp0.f(new Object[0]);
            ec ecVar2 = this.c;
            if (ecVar2 != null) {
                ecVar2.b();
            }
        }
    }

    public final void a(ec ecVar) {
        y45.j(ecVar, "adtuneWebViewListener");
        this.c = ecVar;
    }

    @Override
    public final void a(int i) {
        ec ecVar;
        if (!new dc().a(i) || (ecVar = this.c) == null) {
            return;
        }
        ecVar.b();
    }

    private final List<zb> a() {
        return defpackage.y71.n(new fc("adtuneRendered", new c()), new fc("adtuneClosed", new a()), new fc("openOptOut", new b()));
    }
}
