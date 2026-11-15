package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class hv1 implements iv1<gv1> {
    private final Context a;
    private final bv1 b;
    private final o3 c;
    private gv1 d;

    public hv1(Context context, bv1 bv1Var, o3 o3Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        this.a = context;
        this.b = bv1Var;
        this.c = o3Var;
    }

    public static final void a(hv1 hv1Var) {
        gv1 gv1Var = hv1Var.d;
        if (gv1Var != null) {
            gv1Var.a((fs) null);
        }
        hv1Var.d = null;
    }

    public final class a implements fs {
        private final gv1 a;
        private final kv1<gv1> b;
        final hv1 c;

        public a(hv1 hv1Var, gv1 gv1Var, kv1<gv1> kv1Var) {
            y45.j(gv1Var, "fullscreenHtmlAd");
            y45.j(kv1Var, "creationListener");
            this.c = hv1Var;
            this.a = gv1Var;
            this.b = kv1Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adFetchRequestError");
            hv1.a(this.c);
            this.b.a(w3Var);
        }

        @Override
        public final void a() {
            hv1.a(this.c);
            this.b.a(this.a);
        }
    }

    @Override
    public final void a() {
        gv1 gv1Var = this.d;
        if (gv1Var != null) {
            gv1Var.d();
        }
        gv1 gv1Var2 = this.d;
        if (gv1Var2 != null) {
            gv1Var2.a((fs) null);
        }
        this.d = null;
    }

    @Override
    public final void a(o8<String> o8Var, gz1 gz1Var, String str, kv1<gv1> kv1Var) throws tj2 {
        y45.j(o8Var, "adResponse");
        y45.j(gz1Var, "sizeInfo");
        y45.j(str, "htmlResponse");
        y45.j(kv1Var, "creationListener");
        Context context = this.a;
        bv1 bv1Var = this.b;
        o3 o3Var = this.c;
        t8 t8Var = new t8();
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        hd0 hd0Var = new hd0(applicationContext, bv1Var, o3Var, o8Var, t8Var);
        Context applicationContext2 = context.getApplicationContext();
        y45.i(applicationContext2, "getApplicationContext(...)");
        gv1 gv1Var = new gv1(context, bv1Var, o3Var, o8Var, str, t8Var, hd0Var, new ld0(applicationContext2, o3Var, o8Var, t8Var), new xc0(), new zg0(), new sd0(bv1Var));
        this.d = gv1Var;
        gv1Var.a(new a(this, gv1Var, kv1Var));
        gv1Var.h();
    }
}
