package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class ms0 {
    private static final Object d = new Object();
    private static volatile ms0 e;
    public static final int f = 0;
    private final f41 a;
    private final ArrayList b;
    private int c;

    public static final class a {
        public static ms0 a() {
            ms0 ms0Var;
            ms0 ms0Var2 = ms0.e;
            if (ms0Var2 != null) {
                return ms0Var2;
            }
            synchronized (ms0.d) {
                ms0Var = ms0.e;
                if (ms0Var == null) {
                    ms0Var = new ms0();
                    ms0.e = ms0Var;
                }
            }
            return ms0Var;
        }
    }

    public ms0() {
        this(new f41(f41.c));
    }

    public final Executor c() {
        Executor executorNewSingleThreadExecutor;
        synchronized (d) {
            try {
                if (this.b.size() < 4) {
                    executorNewSingleThreadExecutor = Executors.newSingleThreadExecutor(this.a);
                    y45.i(executorNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
                    this.b.add(executorNewSingleThreadExecutor);
                } else {
                    ArrayList arrayList = this.b;
                    int i = this.c;
                    this.c = i + 1;
                    executorNewSingleThreadExecutor = (Executor) arrayList.get(i);
                    if (this.c == 4) {
                        this.c = 0;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return executorNewSingleThreadExecutor;
    }

    private ms0(f41 f41Var) {
        this.a = f41Var;
        this.b = new ArrayList();
    }
}
