package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import com.yandex.mobile.ads.impl.aq0;
import defpackage.y45;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;

public final class aq0 implements nt {
    private final up0 a;
    private final rm1 b;
    private final lt0 c;
    private final ht0 d;
    private final AtomicBoolean e;

    public aq0(Context context, up0 up0Var, rm1 rm1Var, lt0 lt0Var, ht0 ht0Var) {
        y45.j(context, "context");
        y45.j(up0Var, "interstitialAdContentController");
        y45.j(rm1Var, "proxyInterstitialAdShowListener");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        this.a = up0Var;
        this.b = rm1Var;
        this.c = lt0Var;
        this.d = ht0Var;
        this.e = new AtomicBoolean(false);
        up0Var.a(rm1Var);
    }

    @Override
    public final void a(nm2 nm2Var) {
        this.c.a();
        this.b.a(nm2Var);
    }

    @Override
    public final ss getInfo() {
        return this.a.n();
    }

    @Override
    public final void show(final Activity activity) {
        y45.j(activity, "activity");
        this.c.a();
        this.d.a(new Runnable() {
            @Override
            public final void run() {
                aq0.a(this.b, activity);
            }
        });
    }

    public static final void a(aq0 aq0Var, Activity activity) {
        y45.j(aq0Var, "this$0");
        y45.j(activity, "$activity");
        if (!aq0Var.e.getAndSet(true)) {
            Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(aq0Var.a.a(activity));
            if (thM282exceptionOrNullimpl != null) {
                aq0Var.b.a(new q6(String.valueOf(thM282exceptionOrNullimpl.getMessage())));
                return;
            }
            return;
        }
        aq0Var.b.a(r6.b());
    }
}
