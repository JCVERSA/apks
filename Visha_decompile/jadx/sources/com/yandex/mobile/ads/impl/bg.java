package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import com.yandex.mobile.ads.impl.bg;
import defpackage.y45;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;

public final class bg implements us {
    private final uf a;
    private final pm1 b;
    private final lt0 c;
    private final ht0 d;
    private final AtomicBoolean e;
    private final ss f;

    public bg(Context context, uf ufVar, pm1 pm1Var, lt0 lt0Var, ht0 ht0Var) {
        y45.j(context, "context");
        y45.j(ufVar, "appOpenAdContentController");
        y45.j(pm1Var, "proxyAppOpenAdShowListener");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(ht0Var, "mainThreadExecutor");
        this.a = ufVar;
        this.b = pm1Var;
        this.c = lt0Var;
        this.d = ht0Var;
        this.e = new AtomicBoolean(false);
        this.f = ufVar.n();
        ufVar.a(pm1Var);
    }

    @Override
    public final void a(ql2 ql2Var) {
        this.c.a();
        this.b.a(ql2Var);
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
                bg.a(this.b, activity);
            }
        });
    }

    public static final void a(bg bgVar, Activity activity) {
        y45.j(bgVar, "this$0");
        y45.j(activity, "$activity");
        if (!bgVar.e.getAndSet(true)) {
            Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(bgVar.a.a(activity));
            if (thM282exceptionOrNullimpl != null) {
                bgVar.b.a(new q6(String.valueOf(thM282exceptionOrNullimpl.getMessage())));
                return;
            }
            return;
        }
        bgVar.b.a(r6.b());
    }
}
