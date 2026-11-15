package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.CopyOnWriteArrayList;

public final class mv1 implements Runnable {
    private static final CopyOnWriteArrayList<ov1> f = new CopyOnWriteArrayList<>();
    private final bv1 b;
    private final defpackage.nk1 c;
    private final ov1.a d;
    private final Context e;

    public mv1(Context context, bv1 bv1Var, defpackage.nk1 nk1Var, ov1.a aVar) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(nk1Var, "coroutineScope");
        y45.j(aVar, "sdkInitializationListener");
        this.b = bv1Var;
        this.c = nk1Var;
        this.d = aVar;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.e = applicationContext;
    }

    @Override
    public final void run() {
        ov1 ov1Var = new ov1(this.e, this.b, this.c, new g5(), null, null, 2097136);
        f.add(ov1Var);
        ov1Var.a(gl0.c, new a(ov1Var, this));
    }

    public static final class a implements ov1.a {
        final ov1 a;
        final mv1 b;

        public a(ov1 ov1Var, mv1 mv1Var) {
            this.a = ov1Var;
            this.b = mv1Var;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
            mv1.f.remove(this.a);
            this.b.d.a(w3Var);
        }

        @Override
        public final void a(jc jcVar, o50 o50Var) {
            y45.j(jcVar, "advertisingConfiguration");
            y45.j(o50Var, "environmentConfiguration");
            mv1.f.remove(this.a);
            this.b.d.a(jcVar, o50Var);
        }
    }
}
