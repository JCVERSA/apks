package com.yandex.mobile.ads.impl;

import com.lzy.okgo.cookie.SerializableCookie;
import com.yandex.mobile.ads.impl.bg0;
import defpackage.y45;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

public final class bg0 {
    private final dg0 a;
    private final ag0 b;
    private final Executor c;

    public bg0() {
        dg0 dg0Var = new dg0();
        ag0 ag0Var = new ag0();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        y45.i(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        this(dg0Var, ag0Var, executorServiceNewSingleThreadExecutor);
    }

    public final void a(final cg0 cg0Var, final ct ctVar) {
        y45.j(cg0Var, "listener");
        y45.j(ctVar, "hostAccessChecker");
        this.c.execute(new Runnable() {
            @Override
            public final void run() {
                bg0.a(this.b, ctVar, cg0Var);
            }
        });
    }

    public static final void a(bg0 bg0Var, ct ctVar, cg0 cg0Var) {
        Boolean boolA;
        y45.j(bg0Var, "this$0");
        y45.j(ctVar, "$hostAccessChecker");
        y45.j(cg0Var, "$listener");
        try {
            boolA = bg0Var.a(ctVar);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            boolA = null;
        }
        cg0Var.a(boolA);
    }

    public bg0(dg0 dg0Var, ag0 ag0Var, Executor executor) {
        y45.j(dg0Var, "hostAccessCheckRequester");
        y45.j(ag0Var, "hostAccessAdBlockerDetectionValidator");
        y45.j(executor, "singleThreadExecutor");
        this.a = dg0Var;
        this.b = ag0Var;
        this.c = executor;
    }

    private final Boolean a(ct ctVar) {
        this.a.getClass();
        y45.j("yandex.ru", SerializableCookie.HOST);
        y45.j(ctVar, "hostAccessChecker");
        FutureTask futureTask = new FutureTask(new fg0("yandex.ru", ctVar, new hg0(ctVar)));
        new Thread(futureTask).start();
        this.a.getClass();
        y45.j("mobile.yandexadexchange.net", SerializableCookie.HOST);
        y45.j(ctVar, "hostAccessChecker");
        FutureTask futureTask2 = new FutureTask(new fg0("mobile.yandexadexchange.net", ctVar, new hg0(ctVar)));
        new Thread(futureTask2).start();
        boolean zA = ((eg0) futureTask.get()).a();
        boolean zA2 = ((eg0) futureTask2.get()).a();
        this.b.getClass();
        if (!zA2 && zA) {
            return Boolean.TRUE;
        }
        if (zA2 || zA) {
            return Boolean.FALSE;
        }
        return null;
    }
}
