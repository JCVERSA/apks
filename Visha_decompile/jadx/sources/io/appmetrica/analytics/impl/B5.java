package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.networktasks.internal.ArgumentsMerger;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;

public abstract class B5 implements Ti {
    public BaseRequestConfig a;
    public final BaseRequestConfig.RequestConfigLoader b;
    public W5 c;

    public B5(@NonNull BaseRequestConfig.RequestConfigLoader<Object, W5> requestConfigLoader, @NonNull Hl hl, @NonNull ArgumentsMerger<Object, Object> argumentsMerger) {
        this.b = requestConfigLoader;
        C2910ua.j().u().a(this);
        a(new W5(hl, C2910ua.j().u(), C2910ua.j().r(), argumentsMerger));
    }

    public final synchronized void a(@NonNull W5 w5) {
        this.c = w5;
    }

    @NonNull
    @VisibleForTesting(otherwise = 4)
    public final synchronized ArgumentsMerger<Object, Object> b() {
        return (ArgumentsMerger) this.c.componentArguments;
    }

    @NonNull
    public final synchronized Hl c() {
        return this.c.a;
    }

    public final void d() {
        synchronized (this) {
            this.a = null;
        }
    }

    public final synchronized void e() {
        this.a = null;
    }

    public synchronized void a(@NonNull Object obj) {
        if (!((ArgumentsMerger) this.c.componentArguments).compareWithOtherArguments(obj)) {
            a(new W5(c(), C2910ua.E.u(), C2910ua.E.r(), (ArgumentsMerger) ((ArgumentsMerger) this.c.componentArguments).mergeFrom(obj)));
            e();
        }
    }

    public final synchronized void a(@NonNull Hl hl) {
        a(new W5(hl, C2910ua.E.u(), C2910ua.E.r(), b()));
        e();
    }

    @NonNull
    public final synchronized BaseRequestConfig a() {
        try {
            if (this.a == null) {
                this.a = this.b.load(this.c);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.a;
    }
}
