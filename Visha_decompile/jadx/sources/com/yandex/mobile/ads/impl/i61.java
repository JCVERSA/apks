package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.i61;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@MainThread
public final class i61 implements l61 {
    private final Context a;
    private final bv1 b;
    private final List<k61> c;
    private final lt0 d;
    private final ht0 e;
    private vt f;
    private bu g;
    private ku h;

    public i61(Context context, en2 en2Var) {
        this(context, en2Var, new CopyOnWriteArrayList(), new lt0(context), new ht0(), null, null, null);
    }

    @MainThread
    public final void a() {
        this.d.a();
        this.e.a();
        Iterator<k61> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
        this.c.clear();
    }

    @MainThread
    public final void b(final v7 v7Var, final v61 v61Var) {
        final ca1 ca1Var = ca1.e;
        final fa1 fa1Var = fa1.c;
        y45.j(v7Var, "adRequestData");
        y45.j(ca1Var, "nativeResponseType");
        y45.j(fa1Var, "sourceType");
        y45.j(v61Var, "requestPolicy");
        this.d.a();
        this.e.a(new Runnable() {
            @Override
            public final void run() {
                i61.b(v7Var, ca1Var, fa1Var, v61Var, this);
            }
        });
    }

    public static final void b(v7 v7Var, ca1 ca1Var, fa1 fa1Var, hq1 hq1Var, i61 i61Var) {
        y45.j(v7Var, "$adRequestData");
        y45.j(ca1Var, "$nativeResponseType");
        y45.j(fa1Var, "$sourceType");
        y45.j(hq1Var, "$requestPolicy");
        y45.j(i61Var, "this$0");
        k61 k61Var = new k61(i61Var.a, i61Var.b, new u61(v7Var, ca1Var, fa1Var, hq1Var, 1), i61Var);
        i61Var.c.add(k61Var);
        k61Var.a(i61Var.h);
        k61Var.c();
    }

    public i61(Context context, en2 en2Var, List list, lt0 lt0Var, ht0 ht0Var, vt vtVar, bu buVar, ku kuVar) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(list, "nativeAdLoadingItems");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        this.a = context;
        this.b = en2Var;
        this.c = list;
        this.d = lt0Var;
        this.e = ht0Var;
        this.f = vtVar;
        this.g = buVar;
        this.h = kuVar;
        lt0Var.a();
    }

    @MainThread
    public final void a(final v7 v7Var, final v61 v61Var) {
        final ca1 ca1Var = ca1.c;
        final fa1 fa1Var = fa1.c;
        y45.j(v7Var, "adRequestData");
        y45.j(ca1Var, "nativeResponseType");
        y45.j(fa1Var, "sourceType");
        y45.j(v61Var, "requestPolicy");
        this.d.a();
        this.e.a(new Runnable() {
            @Override
            public final void run() {
                i61.a(v7Var, ca1Var, fa1Var, v61Var, this);
            }
        });
    }

    public static final void a(v7 v7Var, ca1 ca1Var, fa1 fa1Var, hq1 hq1Var, i61 i61Var) {
        y45.j(v7Var, "$adRequestData");
        y45.j(ca1Var, "$nativeResponseType");
        y45.j(fa1Var, "$sourceType");
        y45.j(hq1Var, "$requestPolicy");
        y45.j(i61Var, "this$0");
        k61 k61Var = new k61(i61Var.a, i61Var.b, new u61(v7Var, ca1Var, fa1Var, hq1Var, 1), i61Var);
        i61Var.c.add(k61Var);
        k61Var.a(i61Var.f);
        k61Var.c();
    }

    @MainThread
    public final void a(final v7 v7Var, final v61 v61Var, final int i) {
        final ca1 ca1Var = ca1.d;
        final fa1 fa1Var = fa1.c;
        y45.j(v7Var, "adRequestData");
        y45.j(ca1Var, "nativeResponseType");
        y45.j(fa1Var, "sourceType");
        y45.j(v61Var, "requestPolicy");
        this.d.a();
        this.e.a(new Runnable() {
            @Override
            public final void run() {
                i61.a(v7Var, ca1Var, fa1Var, v61Var, i, this);
            }
        });
    }

    public static final void a(v7 v7Var, ca1 ca1Var, fa1 fa1Var, hq1 hq1Var, int i, i61 i61Var) {
        y45.j(v7Var, "$adRequestData");
        y45.j(ca1Var, "$nativeResponseType");
        y45.j(fa1Var, "$sourceType");
        y45.j(hq1Var, "$requestPolicy");
        y45.j(i61Var, "this$0");
        k61 k61Var = new k61(i61Var.a, i61Var.b, new u61(v7Var, ca1Var, fa1Var, hq1Var, i), i61Var);
        i61Var.c.add(k61Var);
        k61Var.a(i61Var.g);
        k61Var.c();
    }

    @Override
    @MainThread
    public final void a(k61 k61Var) {
        y45.j(k61Var, "nativeAdLoadingItem");
        this.d.a();
        this.c.remove(k61Var);
    }

    @MainThread
    public final void a(vt vtVar) {
        this.d.a();
        this.f = vtVar;
        Iterator<k61> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().a(vtVar);
        }
    }

    @MainThread
    public final void a(ym2 ym2Var) {
        this.d.a();
        this.g = ym2Var;
        Iterator<k61> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().a(ym2Var);
        }
    }

    @MainThread
    public final void a(hn2 hn2Var) {
        this.d.a();
        this.h = hn2Var;
        Iterator<k61> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().a(hn2Var);
        }
    }
}
