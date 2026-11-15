package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.ye9;
import defpackage.zfb;
import java.util.Set;
import kotlin.Result;

public final class f82 implements Thread.UncaughtExceptionHandler {
    private final sp1 a;
    private final Thread.UncaughtExceptionHandler b;
    private final ju1 c;

    public f82(sp1 sp1Var, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, ju1 ju1Var) {
        y45.j(sp1Var, "reporter");
        y45.j(ju1Var, "sdkConfiguration");
        this.a = sp1Var;
        this.b = uncaughtExceptionHandler;
        this.c = ju1Var;
    }

    @Override
    public final void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2;
        y45.j(thread, "thread");
        y45.j(th, "throwable");
        try {
            Set<e60> setQ = this.c.q();
            if (setQ == null) {
                setQ = ye9.f();
            }
            StackTraceElement[] stackTrace = th.getStackTrace();
            y45.i(stackTrace, "getStackTrace(...)");
            if (j22.a(stackTrace, setQ)) {
                this.a.reportUnhandledException(th);
            }
            if (this.c.p() || (uncaughtExceptionHandler2 = this.b) == null) {
                return;
            }
        } catch (Throwable th2) {
            try {
                Result.Companion companion = Result.INSTANCE;
                this.a.reportError("Failed to report uncaught exception", th2);
                Result.m279constructorimpl(zfb.a);
            } catch (Throwable th3) {
                try {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m279constructorimpl(kotlin.c.a(th3));
                } finally {
                    if (!this.c.p() && (uncaughtExceptionHandler = this.b) != null) {
                        uncaughtExceptionHandler.uncaughtException(thread, th);
                    }
                }
            }
            if (this.c.p() || uncaughtExceptionHandler == null) {
                return;
            }
        }
        uncaughtExceptionHandler2.uncaughtException(thread, th);
    }
}
