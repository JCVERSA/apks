package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.tk;
import defpackage.y45;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class tk implements fs1 {
    private final Context a;
    private final lt0 b;
    private final ht0 c;
    private final es1 d;
    private final CopyOnWriteArrayList<ds1> e;
    private iu f;

    public tk(Context context, en2 en2Var, lt0 lt0Var, ht0 ht0Var, es1 es1Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(es1Var, "adItemLoadControllerFactory");
        this.a = context;
        this.b = lt0Var;
        this.c = ht0Var;
        this.d = es1Var;
        this.e = new CopyOnWriteArrayList<>();
    }

    @Override
    @MainThread
    public final void a() {
        this.b.a();
        this.c.a();
        for (ds1 ds1Var : this.e) {
            ds1Var.a((iu) null);
            ds1Var.e();
        }
        this.e.clear();
    }

    @Override
    @MainThread
    public final void a(final v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        this.b.a();
        if (this.f == null) {
            hp0.c("RewardedAdLoader. RewardedAdLoadListener is on loading start. Please, use setAdLoadListener before loading Ad.", new Object[0]);
        }
        this.c.a(new Runnable() {
            @Override
            public final void run() {
                tk.a(this.b, v7Var);
            }
        });
    }

    public static final void a(tk tkVar, v7 v7Var) {
        y45.j(tkVar, "this$0");
        y45.j(v7Var, "$adRequestData");
        ds1 ds1VarA = tkVar.d.a(tkVar.a, tkVar, v7Var, null);
        tkVar.e.add(ds1VarA);
        ds1VarA.a(v7Var.a());
        ds1VarA.a(tkVar.f);
        ds1VarA.b(v7Var);
    }

    @Override
    public final void a(jd0 jd0Var) {
        ds1 ds1Var = (ds1) jd0Var;
        y45.j(ds1Var, "loadController");
        if (this.f == null) {
            hp0.c("RewardedAdLoader. RewardedAdLoadListener is null on finished ad loading. Please, keep active listener until ad loading finished or use cancelLoading().", new Object[0]);
        }
        ds1Var.a((iu) null);
        this.e.remove(ds1Var);
    }

    @Override
    @MainThread
    public final void a(dn2 dn2Var) {
        this.b.a();
        this.f = dn2Var;
        Iterator<ds1> it = this.e.iterator();
        while (it.hasNext()) {
            it.next().a((iu) dn2Var);
        }
    }
}
