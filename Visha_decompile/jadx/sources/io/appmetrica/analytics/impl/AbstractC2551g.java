package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.concurrent.TimeUnit;

public abstract class AbstractC2551g {
    public final C2706m5 a;
    public final C2920uk b;
    public final C3020yk c;
    public final C2895tk d;
    public final Ya e;
    public final SystemTimeProvider f;

    public AbstractC2551g(@NonNull C2706m5 c2706m5, @NonNull C2920uk c2920uk, @NonNull C3020yk c3020yk, @NonNull C2895tk c2895tk, @NonNull Ya ya, @NonNull SystemTimeProvider systemTimeProvider) {
        this.a = c2706m5;
        this.b = c2920uk;
        this.c = c3020yk;
        this.d = c2895tk;
        this.e = ya;
        this.f = systemTimeProvider;
    }

    @NonNull
    public final C2597hk a(@NonNull Object obj) {
        return a((C2621ik) obj);
    }

    @Nullable
    public final C2597hk b() {
        if (this.c.h()) {
            return new C2597hk(this.a, this.c, a(), this.f);
        }
        return null;
    }

    @NonNull
    public final C2597hk a(@NonNull C2621ik c2621ik) {
        if (this.c.h()) {
            this.e.reportEvent("create session with non-empty storage");
        }
        C2706m5 c2706m5 = this.a;
        C3020yk c3020yk = this.c;
        long jA = this.b.a();
        C3020yk c3020yk2 = this.c;
        c3020yk2.a(C3020yk.f, Long.valueOf(jA));
        c3020yk2.a(C3020yk.d, Long.valueOf(c2621ik.a));
        c3020yk2.a(C3020yk.h, Long.valueOf(c2621ik.a));
        c3020yk2.a(C3020yk.g, 0L);
        c3020yk2.a(C3020yk.i, Boolean.TRUE);
        c3020yk2.b();
        this.a.e.a(jA, this.d.a, TimeUnit.MILLISECONDS.toSeconds(c2621ik.b));
        return new C2597hk(c2706m5, c3020yk, a(), new SystemTimeProvider());
    }

    public final C2671kk a() {
        C2646jk c2646jk = new C2646jk(this.d);
        c2646jk.g = this.c.i();
        c2646jk.f = this.c.c.a(C3020yk.g);
        c2646jk.d = this.c.c.a(C3020yk.h);
        c2646jk.c = this.c.c.a(C3020yk.f);
        c2646jk.h = this.c.c.a(C3020yk.d);
        c2646jk.a = this.c.c.a(C3020yk.e);
        return new C2671kk(c2646jk);
    }
}
