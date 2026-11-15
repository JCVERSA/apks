package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class z4 {

    public static final a f4612d = new a(null);

    private static final z4 f4613e = new z4(0, 0, 0.0f, 7, null);

    private final long f4614a;

    private final long f4615b;

    private final float f4616c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final z4 a() {
            return z4.f4613e;
        }

        private a() {
        }
    }

    public z4(long j10, long j11, float f10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, f10);
    }

    public final float b() {
        return this.f4616c;
    }

    public final long c() {
        return this.f4614a;
    }

    public final long d() {
        return this.f4615b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z4)) {
            return false;
        }
        z4 z4Var = (z4) obj;
        return u1.m(this.f4614a, z4Var.f4614a) && y.g.j(this.f4615b, z4Var.f4615b) && this.f4616c == z4Var.f4616c;
    }

    public int hashCode() {
        return (((u1.s(this.f4614a) * 31) + y.g.o(this.f4615b)) * 31) + Float.floatToIntBits(this.f4616c);
    }

    public String toString() {
        return "Shadow(color=" + ((Object) u1.t(this.f4614a)) + ", offset=" + ((Object) y.g.t(this.f4615b)) + ", blurRadius=" + this.f4616c + ')';
    }

    private z4(long j10, long j11, float f10) {
        this.f4614a = j10;
        this.f4615b = j11;
        this.f4616c = f10;
    }

    public z4(long j10, long j11, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? w1.d(4278190080L) : j10, (i10 & 2) != 0 ? y.g.f75999b.c() : j11, (i10 & 4) != 0 ? 0.0f : f10, null);
    }
}
