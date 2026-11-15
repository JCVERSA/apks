package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class hr5 implements Iterable, qe5 {
    public static final a e = new a(null);
    public final long b;
    public final long c;
    public final long d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public hr5(long j, long j2, long j3) {
        if (j3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j3 == Long.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        this.b = j;
        this.c = xh8.d(j, j2, j3);
        this.d = j3;
    }

    public final long b() {
        return this.b;
    }

    public final long c() {
        return this.c;
    }

    @Override
    public fr5 iterator() {
        return new ir5(this.b, this.c, this.d);
    }
}
