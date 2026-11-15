package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.s01;
import defpackage.ky5;
import defpackage.y45;
import defpackage.yi5;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

public final class s01 implements sp1 {
    private static final Object e = new Object();
    private final sp1 a;
    private final boolean b;
    private final Executor c;
    private final yi5 d;

    public s01(sp1 sp1Var, yi5 yi5Var, boolean z, Executor executor) {
        y45.j(yi5Var, "lazyVarioqubAdapter");
        y45.j(executor, "executor");
        this.a = sp1Var;
        this.b = z;
        this.c = executor;
        this.d = yi5Var;
    }

    private static void a(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(ky5.g(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), defpackage.hi.c1((Object[]) entry.getValue()));
        }
        linkedHashMap.toString();
        sp0.b(new Object[0]);
    }

    @Override
    public final void reportAnr(final Map<Thread, StackTraceElement[]> map) {
        y45.j(map, "traces");
        if (this.a != null) {
            this.c.execute(new Runnable() {
                @Override
                public final void run() {
                    s01.a(this.b, map);
                }
            });
        } else {
            sp0.d(new Object[0]);
        }
    }

    @Override
    public final void reportError(final String str, final Throwable th) {
        y45.j(str, "message");
        y45.j(th, "error");
        if (this.b) {
            if (this.a != null) {
                this.c.execute(new Runnable() {
                    @Override
                    public final void run() {
                        s01.a(this.b, str, th);
                    }
                });
            } else {
                sp0.d(new Object[0]);
            }
        }
    }

    @Override
    public final void reportUnhandledException(final Throwable th) {
        y45.j(th, "throwable");
        if (this.a != null) {
            this.c.execute(new Runnable() {
                @Override
                public final void run() {
                    s01.a(this.b, th);
                }
            });
        } else {
            sp0.d(new Object[0]);
        }
    }

    private static void a(String str, Throwable th) {
        Objects.toString(th);
        sp0.b(new Object[0]);
    }

    private static void a(String str, Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(ky5.g(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), defpackage.ei.c(new Object[]{entry.getValue()}));
        }
        linkedHashMap.toString();
        sp0.a(new Object[0]);
    }

    private static void a(Throwable th) {
        Objects.toString(th);
        sp0.b(new Object[0]);
    }

    public static final void a(s01 s01Var, Map map) {
        y45.j(s01Var, "this$0");
        y45.j(map, "$traces");
        try {
            s01Var.getClass();
            a(map);
            s01Var.a.reportAnr(map);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    public static final void a(s01 s01Var, String str, Throwable th) {
        y45.j(s01Var, "this$0");
        y45.j(str, "$message");
        y45.j(th, "$error");
        try {
            s01Var.getClass();
            a(str, th);
            s01Var.a.reportError(str, th);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    @Override
    public final void a(final op1 op1Var) {
        y45.j(op1Var, "report");
        if (this.a != null) {
            this.c.execute(new Runnable() {
                @Override
                public final void run() {
                    s01.a(this.b, op1Var);
                }
            });
        } else {
            sp0.d(new Object[0]);
        }
    }

    public static final void a(s01 s01Var, op1 op1Var) {
        y45.j(s01Var, "this$0");
        y45.j(op1Var, "$report");
        try {
            s92.a((r92) s01Var.d.getValue(), op1Var);
            a(op1Var.c(), op1Var.b());
            s01Var.a.a(op1Var);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    public static final void a(s01 s01Var, Throwable th) {
        y45.j(s01Var, "this$0");
        y45.j(th, "$throwable");
        try {
            s01Var.getClass();
            a(th);
            s01Var.a.reportUnhandledException(th);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    @Override
    public final void a(boolean z) {
        sp1 sp1Var = this.a;
        if (sp1Var != null) {
            sp1Var.a(z);
        }
    }
}
