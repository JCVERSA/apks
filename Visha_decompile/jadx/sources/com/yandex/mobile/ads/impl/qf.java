package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.yi5;
import io.appmetrica.analytics.IReporter;
import java.util.Map;

public final class qf implements sp1 {
    private final yi5 a;

    public qf(yi5 yi5Var) {
        y45.j(yi5Var, "lazyReporter");
        this.a = yi5Var;
    }

    @Override
    public final void a(op1 op1Var) {
        y45.j(op1Var, "report");
        try {
            ((IReporter) this.a.getValue()).reportEvent(op1Var.c(), op1Var.b());
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    @Override
    public final void reportAnr(Map<Thread, StackTraceElement[]> map) {
        y45.j(map, "traces");
        try {
            ((IReporter) this.a.getValue()).reportAnr(map);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    @Override
    public final void reportError(String str, Throwable th) {
        y45.j(str, "message");
        y45.j(th, "error");
        try {
            ((IReporter) this.a.getValue()).reportError(str, th);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    @Override
    public final void reportUnhandledException(Throwable th) {
        y45.j(th, "throwable");
        try {
            ((IReporter) this.a.getValue()).reportUnhandledException(th);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }

    @Override
    public final void a(boolean z) {
        try {
            ((IReporter) this.a.getValue()).setDataSendingEnabled(z);
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
        }
    }
}
