package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.impl.uc;
import defpackage.y45;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class uc {
    private final Executor a;
    private final qc b;
    private final qc c;
    private final se0 d;

    /* JADX WARN: Illegal instructions before constructor call */
    public uc(Context context) {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new f41(f41.d));
        y45.i(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        this(context, executorServiceNewSingleThreadExecutor, new ue0(context), new uf0(context), te0.a(context));
    }

    public final void a(final sc scVar) {
        y45.j(scVar, "listener");
        this.a.execute(new Runnable() {
            @Override
            public final void run() {
                uc.a(this.b, scVar);
            }
        });
    }

    public static final void a(uc ucVar, sc scVar) {
        y45.j(ucVar, "this$0");
        y45.j(scVar, "$listener");
        lc lcVarA = ucVar.b.a();
        lc lcVarA2 = ucVar.c.a();
        ucVar.d.b(lcVarA);
        nc ncVar = new nc(lcVarA, lcVarA2, ucVar.d.a(lcVarA));
        if (ncVar.a() == null && ncVar.c() == null) {
            scVar.a();
        } else {
            scVar.a(ncVar);
        }
    }

    public uc(Context context, Executor executor, qc qcVar, qc qcVar2, se0 se0Var) {
        y45.j(context, "context");
        y45.j(executor, "executor");
        y45.j(qcVar, "gmsAdvertisingInfoProvider");
        y45.j(qcVar2, "hmsAdvertisingInfoProvider");
        y45.j(se0Var, "gmsAdvertisingIdStorage");
        this.a = executor;
        this.b = qcVar;
        this.c = qcVar2;
        this.d = se0Var;
    }
}
