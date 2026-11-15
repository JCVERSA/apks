package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.ok;
import defpackage.y45;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class ok implements yp0 {
    private final Context a;
    private final lt0 b;
    private final ht0 c;
    private final xp0 d;
    private final CopyOnWriteArrayList<wp0> e;
    private pt f;

    public ok(Context context, en2 en2Var, lt0 lt0Var, ht0 ht0Var, xp0 xp0Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(xp0Var, "adItemLoadControllerFactory");
        this.a = context;
        this.b = lt0Var;
        this.c = ht0Var;
        this.d = xp0Var;
        this.e = new CopyOnWriteArrayList<>();
    }

    @Override
    @MainThread
    public final void a() {
        this.b.a();
        this.c.a();
        for (wp0 wp0Var : this.e) {
            wp0Var.a((pt) null);
            wp0Var.e();
        }
        this.e.clear();
    }

    @Override
    @MainThread
    public final void a(final v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        this.b.a();
        if (this.f == null) {
            hp0.c("InterstitialAdLoader. InterstitialAdLoadListener is null on loading start. Please, use setAdLoadListener before loading Ad.", new Object[0]);
        }
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                ok.a(this.b, v7Var);
            }
        });
    }

    public static final void a(ok okVar, v7 v7Var) {
        y45.j(okVar, "this$0");
        y45.j(v7Var, "$adRequestData");
        wp0 wp0VarA = okVar.d.a(okVar.a, okVar, v7Var, null);
        okVar.e.add(wp0VarA);
        wp0VarA.a(v7Var.a());
        wp0VarA.a(okVar.f);
        wp0VarA.b(v7Var);
    }

    @Override
    public final void a(jd0 jd0Var) {
        wp0 wp0Var = (wp0) jd0Var;
        y45.j(wp0Var, "loadController");
        if (this.f == null) {
            hp0.c("InterstitialAdLoader. InterstitialAdLoadListener is null on finished ad loading. Please, keep active listener until ad loading finished or use cancelLoading().", new Object[0]);
        }
        wp0Var.a((pt) null);
        this.e.remove(wp0Var);
    }

    @Override
    @MainThread
    public final void a(om2 om2Var) {
        this.b.a();
        this.f = om2Var;
        Iterator<wp0> it = this.e.iterator();
        while (it.hasNext()) {
            it.next().a((pt) om2Var);
        }
    }
}
