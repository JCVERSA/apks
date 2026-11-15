package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class a31 implements dh0 {
    private final w21 a;
    private final n21 b;
    private final qe2 c;
    private final vj2 d;
    private final l21 e;
    private final zg0 f;
    private final ju1 g;
    private zo h;
    private boolean i;

    public a31(w21 w21Var, n21 n21Var) {
        qe2 qe2Var = new qe2();
        vj2 vj2Var = new vj2(w21Var);
        l21 l21Var = new l21();
        zg0 zg0Var = new zg0();
        int i = pw1.l;
        this(w21Var, n21Var, qe2Var, vj2Var, l21Var, zg0Var, pw1.a.a().a(w21Var.i()));
    }

    @Override
    public final void a(boolean z) {
    }

    public final void b(String str) {
        y45.j(str, "htmlResponse");
        this.e.getClass();
        boolean zA = l21.a(str);
        this.f.getClass();
        yg0 q21Var = zA ? new q21() : new mk();
        w21 w21Var = this.a;
        qe2 qe2Var = this.c;
        n21 n21Var = this.b;
        q21Var.a(w21Var, this, qe2Var, n21Var, n21Var, n21Var).a(str);
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "adFetchRequestError");
    }

    @Override
    public final void a(yf1 yf1Var, Map map) {
        y45.j(yf1Var, "webView");
        y45.j(map, "trackingParameters");
    }

    @Override
    public final void a(String str) {
        y45.j(str, "customUrl");
        ju1 ju1Var = this.g;
        if (ju1Var == null || !ju1Var.S() || this.i) {
            zo zoVar = this.h;
            if (zoVar != null) {
                zoVar.a(this.a, str);
            }
            this.i = false;
        }
    }

    public a31(w21 w21Var, n21 n21Var, qe2 qe2Var, vj2 vj2Var, l21 l21Var, zg0 zg0Var, ju1 ju1Var) {
        y45.j(w21Var, "mraidWebView");
        y45.j(n21Var, "mraidEventsObservable");
        y45.j(qe2Var, "videoEventController");
        y45.j(vj2Var, "webViewLoadingNotifier");
        y45.j(l21Var, "mraidCompatibilityDetector");
        y45.j(zg0Var, "htmlWebViewAdapterFactoryProvider");
        this.a = w21Var;
        this.b = n21Var;
        this.c = qe2Var;
        this.d = vj2Var;
        this.e = l21Var;
        this.f = zg0Var;
        this.g = ju1Var;
    }

    @Override
    public final void a() {
        this.i = true;
    }

    public final void a(zo zoVar) {
        this.h = zoVar;
    }

    public final void b() {
        this.d.a(kotlin.collections.a.l());
    }
}
