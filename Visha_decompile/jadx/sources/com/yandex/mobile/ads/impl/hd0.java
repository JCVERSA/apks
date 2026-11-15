package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public final class hd0 implements dh0 {
    private final o8<String> a;
    private final ju1 b;
    private final ug0 c;
    private final u1 d;
    private fs e;
    private t62 f;
    private boolean g;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public hd0(Context context, bv1 bv1Var, o3 o3Var, o8 o8Var, t8 t8Var) {
        this(context, bv1Var, o3Var, o8Var, t8Var, pw1.a.a().a(context));
        int i = pw1.l;
    }

    @Override
    public final void a(boolean z) {
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "adFetchRequestError");
        fs fsVar = this.e;
        if (fsVar != null) {
            fsVar.a(w3Var);
        }
    }

    public hd0(Context context, bv1 bv1Var, o3 o3Var, o8<String> o8Var, t8 t8Var, ju1 ju1Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(t8Var, "adResultReceiver");
        this.a = o8Var;
        this.b = ju1Var;
        this.c = new ug0(context, o3Var);
        this.d = new u1(context, o8Var, t8Var, bv1Var, o3Var);
    }

    @Override
    public final void a(yf1 yf1Var, Map map) {
        y45.j(yf1Var, "webView");
        y45.j(map, "trackingParameters");
        t62 t62Var = this.f;
        if (t62Var != null) {
            t62Var.a(map);
        }
        fs fsVar = this.e;
        if (fsVar != null) {
            fsVar.a();
        }
    }

    @Override
    public final void a(String str) {
        y45.j(str, "url");
        ju1 ju1Var = this.b;
        if (ju1Var == null || !ju1Var.S() || this.g) {
            this.c.a(str, this.a, this.d);
            this.g = false;
        }
    }

    @Override
    public final void a() {
        this.g = true;
    }

    public final void a(fs fsVar) {
        this.e = fsVar;
    }

    public final void a(ad0 ad0Var) {
        this.f = ad0Var;
    }
}
