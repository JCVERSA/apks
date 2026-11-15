package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.fm0;
import defpackage.y45;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

@MainThread
public final class fm0 implements hm0 {
    private final Context a;
    private final bv1 b;
    private final lt0 c;
    private final ht0 d;
    private final CopyOnWriteArrayList<gm0> e;
    private jt f;

    public fm0(Context context, bv1 bv1Var) {
        this(context, bv1Var, new lt0(context), new ht0());
    }

    public final void a(final oi2 oi2Var) {
        y45.j(oi2Var, "requestConfig");
        this.c.a();
        this.d.a(new Runnable() {
            @Override
            public final void run() {
                fm0.a(this.b, oi2Var);
            }
        });
    }

    public fm0(Context context, bv1 bv1Var, lt0 lt0Var, ht0 ht0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        this.a = context;
        this.b = bv1Var;
        this.c = lt0Var;
        this.d = ht0Var;
        this.e = new CopyOnWriteArrayList<>();
        lt0Var.a();
    }

    public static final void a(fm0 fm0Var, oi2 oi2Var) {
        y45.j(fm0Var, "this$0");
        y45.j(oi2Var, "$requestConfig");
        Context context = fm0Var.a;
        bv1 bv1Var = fm0Var.b;
        int i = j32.d;
        gm0 gm0Var = new gm0(context, bv1Var, fm0Var, j32.a.a());
        fm0Var.e.add(gm0Var);
        gm0Var.a(fm0Var.f);
        gm0Var.a(oi2Var);
    }

    @Override
    public final void a(gm0 gm0Var) {
        y45.j(gm0Var, "nativeAdLoadingItem");
        this.c.a();
        this.e.remove(gm0Var);
    }

    public final void a(jt jtVar) {
        this.c.a();
        this.f = jtVar;
        Iterator<T> it = this.e.iterator();
        while (it.hasNext()) {
            ((gm0) it.next()).a(jtVar);
        }
    }
}
