package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.Looper;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.HashMap;
import java.util.concurrent.Executor;

public final class Uj {
    public final Tj a;
    public volatile G9 b;
    public volatile G9 c;
    public volatile G9 d;
    public volatile G9 e;
    public volatile G9 f;
    public volatile G9 g;
    public volatile Sj h;

    public Uj() {
        this(new Tj());
    }

    public final IHandlerExecutor a() {
        if (this.g == null) {
            synchronized (this) {
                try {
                    if (this.g == null) {
                        this.a.getClass();
                        HandlerThreadC2613ib handlerThreadC2613ibA = G9.a("IAA-SDE");
                        this.g = new G9(handlerThreadC2613ibA, handlerThreadC2613ibA.getLooper(), new Handler(handlerThreadC2613ibA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.g;
    }

    public final IHandlerExecutor b() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.a.getClass();
                        HandlerThreadC2613ib handlerThreadC2613ibA = G9.a("IAA-SC");
                        this.b = new G9(handlerThreadC2613ibA, handlerThreadC2613ibA.getLooper(), new Handler(handlerThreadC2613ibA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }

    public final IHandlerExecutor c() {
        if (this.d == null) {
            synchronized (this) {
                try {
                    if (this.d == null) {
                        this.a.getClass();
                        HandlerThreadC2613ib handlerThreadC2613ibA = G9.a("IAA-SMH-1");
                        this.d = new G9(handlerThreadC2613ibA, handlerThreadC2613ibA.getLooper(), new Handler(handlerThreadC2613ibA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.d;
    }

    public final IHandlerExecutor d() {
        if (this.e == null) {
            synchronized (this) {
                try {
                    if (this.e == null) {
                        this.a.getClass();
                        HandlerThreadC2613ib handlerThreadC2613ibA = G9.a("IAA-SNTPE");
                        this.e = new G9(handlerThreadC2613ibA, handlerThreadC2613ibA.getLooper(), new Handler(handlerThreadC2613ibA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.e;
    }

    public final IHandlerExecutor e() {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        this.a.getClass();
                        HandlerThreadC2613ib handlerThreadC2613ibA = G9.a("IAA-STE");
                        this.c = new G9(handlerThreadC2613ibA, handlerThreadC2613ibA.getLooper(), new Handler(handlerThreadC2613ibA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }

    public final Executor f() {
        if (this.h == null) {
            synchronized (this) {
                try {
                    if (this.h == null) {
                        this.a.getClass();
                        this.h = new Sj(new Handler(Looper.getMainLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.h;
    }

    public Uj(Tj tj) {
        new HashMap();
        this.a = tj;
    }
}
