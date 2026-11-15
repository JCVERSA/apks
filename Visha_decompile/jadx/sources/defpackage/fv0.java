package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class fv0 implements Iterable, qe5 {
    public static final a e = new a(null);
    public final char b;
    public final char c;
    public final int d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public fv0(char c, char c2, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.b = c;
        this.c = (char) xh8.c(c, c2, i);
        this.d = i;
    }

    public final char b() {
        return this.b;
    }

    public final char c() {
        return this.c;
    }

    @Override
    public cv0 iterator() {
        return new gv0(this.b, this.c, this.d);
    }
}
