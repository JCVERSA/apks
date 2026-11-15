package io.appmetrica.analytics.impl;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import java.util.concurrent.TimeUnit;

public final class Kj {
    public volatile long a;
    public Oe b;
    public TimeProvider c;

    public static Kj c() {
        return Jj.a;
    }

    public final synchronized long a() {
        return (System.currentTimeMillis() / 1000) + this.a;
    }

    public final synchronized void b() {
        this.b.d(false);
        this.b.b();
    }

    public final synchronized long d() {
        return this.a;
    }

    public final synchronized void e() {
        a(C2910ua.E.x(), new SystemTimeProvider());
    }

    public final synchronized boolean f() {
        return this.b.b(true);
    }

    public final synchronized void a(long j, @Nullable Long l) {
        try {
            this.a = (j - this.c.currentTimeMillis()) / 1000;
            boolean z = true;
            if (this.b.b(true)) {
                if (l != null) {
                    long jAbs = Math.abs(j - this.c.currentTimeMillis());
                    Oe oe = this.b;
                    if (jAbs <= TimeUnit.SECONDS.toMillis(l.longValue())) {
                        z = false;
                    }
                    oe.d(z);
                } else {
                    this.b.d(false);
                }
            }
            this.b.d(this.a);
            this.b.b();
        } catch (Throwable th) {
            throw th;
        }
    }

    @VisibleForTesting
    public final void a(Oe oe, TimeProvider timeProvider) {
        this.b = oe;
        this.a = oe.a(0);
        this.c = timeProvider;
    }
}
