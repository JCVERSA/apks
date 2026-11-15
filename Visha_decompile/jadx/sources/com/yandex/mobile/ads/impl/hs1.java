package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import com.yandex.mobile.ads.impl.hs1;
import defpackage.y45;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;

public final class hs1 implements gu {
    private final bs1 a;
    private final tm1 b;
    private final lt0 c;
    private final ht0 d;
    private final AtomicBoolean e;
    private final ss f;

    public hs1(Context context, bs1 bs1Var, tm1 tm1Var, lt0 lt0Var, ht0 ht0Var) {
        y45.j(context, "context");
        y45.j(bs1Var, "rewardedAdContentController");
        y45.j(tm1Var, "proxyRewardedAdShowListener");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        this.a = bs1Var;
        this.b = tm1Var;
        this.c = lt0Var;
        this.d = ht0Var;
        this.e = new AtomicBoolean(false);
        this.f = bs1Var.n();
        bs1Var.a(tm1Var);
    }

    @Override
    public final void a(cn2 cn2Var) {
        this.c.a();
        this.b.a(cn2Var);
    }

    @Override
    public final ss getInfo() {
        return this.f;
    }

    @Override
    public final void show(final Activity activity) {
        y45.j(activity, "activity");
        this.c.a();
        this.d.a(new Runnable() {
            @Override
            public final void run() {
                hs1.a(this.b, activity);
            }
        });
    }

    public static final void a(hs1 hs1Var, Activity activity) {
        y45.j(hs1Var, "this$0");
        y45.j(activity, "$activity");
        if (!hs1Var.e.getAndSet(true)) {
            Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(hs1Var.a.a(activity));
            if (thM282exceptionOrNullimpl != null) {
                hs1Var.b.a(new q6(String.valueOf(thM282exceptionOrNullimpl.getMessage())));
                return;
            }
            return;
        }
        hs1Var.b.a(r6.b());
    }
}
