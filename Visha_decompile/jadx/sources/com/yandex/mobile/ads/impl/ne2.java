package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ne2 {
    private static volatile y30 a;
    private static final Object b = new Object();
    public static final int c = 0;

    private static y30 a(Context context) {
        Context applicationContext = context.getApplicationContext();
        k22 k22Var = new k22(applicationContext);
        int i = d70.e;
        d70 d70VarA = d70.a.a();
        y45.g(applicationContext);
        sm smVarA = d70VarA.a(applicationContext);
        oz.a aVar = new oz.a(applicationContext, new cv1(dt1.a()).a(applicationContext));
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(4);
        y45.g(executorServiceNewFixedThreadPool);
        y45.j(applicationContext, "context");
        y45.j(k22Var, "databaseProvider");
        y45.j(smVarA, "cache");
        y45.j(aVar, "upstreamFactory");
        y45.j(executorServiceNewFixedThreadPool, "executor");
        return new y30(applicationContext, new pz(k22Var, 0), new qz(new wm.a().a(smVarA).a(aVar), executorServiceNewFixedThreadPool));
    }

    public static y30 b(Context context) {
        y30 y30VarA;
        y45.j(context, "context");
        y30 y30Var = a;
        if (y30Var != null) {
            return y30Var;
        }
        synchronized (b) {
            y30 y30Var2 = a;
            if (y30Var2 != null) {
                return y30Var2;
            }
            try {
                y30VarA = a(context);
                a = y30VarA;
            } catch (Throwable th) {
                th.toString();
                sp0.b(new Object[0]);
                y30VarA = null;
            }
            return y30VarA;
        }
    }
}
