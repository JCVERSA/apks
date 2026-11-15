package androidx.compose.foundation.lazy.layout;

import androidx.collection.m0;
import androidx.collection.t0;

public final class f0 {

    private final m0 f2744a = t0.a();

    private final m0 f2745b = t0.a();

    private long f2746c;

    private long f2747d;

    public final long d(long j10, long j11) {
        if (j11 == 0) {
            return j10;
        }
        long j12 = 4;
        return (j10 / j12) + ((j11 / j12) * ((long) 3));
    }

    public final long e() {
        return this.f2746c;
    }

    public final m0 f() {
        return this.f2744a;
    }

    public final long g() {
        return this.f2747d;
    }

    public final m0 h() {
        return this.f2745b;
    }
}
