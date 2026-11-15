package y;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class k {

    public static final a f76010i = new a(null);

    private static final k f76011j = l.c(0.0f, 0.0f, 0.0f, 0.0f, y.a.f75993a.a());

    private final float f76012a;

    private final float f76013b;

    private final float f76014c;

    private final float f76015d;

    private final long f76016e;

    private final long f76017f;

    private final long f76018g;

    private final long f76019h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public k(float f10, float f11, float f12, float f13, long j10, long j11, long j12, long j13, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, j10, j11, j12, j13);
    }

    public final float a() {
        return this.f76015d;
    }

    public final long b() {
        return this.f76019h;
    }

    public final long c() {
        return this.f76018g;
    }

    public final float d() {
        return this.f76015d - this.f76013b;
    }

    public final float e() {
        return this.f76012a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return Float.compare(this.f76012a, kVar.f76012a) == 0 && Float.compare(this.f76013b, kVar.f76013b) == 0 && Float.compare(this.f76014c, kVar.f76014c) == 0 && Float.compare(this.f76015d, kVar.f76015d) == 0 && y.a.c(this.f76016e, kVar.f76016e) && y.a.c(this.f76017f, kVar.f76017f) && y.a.c(this.f76018g, kVar.f76018g) && y.a.c(this.f76019h, kVar.f76019h);
    }

    public final float f() {
        return this.f76014c;
    }

    public final float g() {
        return this.f76013b;
    }

    public final long h() {
        return this.f76016e;
    }

    public int hashCode() {
        return (((((((((((((Float.floatToIntBits(this.f76012a) * 31) + Float.floatToIntBits(this.f76013b)) * 31) + Float.floatToIntBits(this.f76014c)) * 31) + Float.floatToIntBits(this.f76015d)) * 31) + y.a.f(this.f76016e)) * 31) + y.a.f(this.f76017f)) * 31) + y.a.f(this.f76018g)) * 31) + y.a.f(this.f76019h);
    }

    public final long i() {
        return this.f76017f;
    }

    public final float j() {
        return this.f76014c - this.f76012a;
    }

    public String toString() {
        long j10 = this.f76016e;
        long j11 = this.f76017f;
        long j12 = this.f76018g;
        long j13 = this.f76019h;
        String str = c.a(this.f76012a, 1) + ", " + c.a(this.f76013b, 1) + ", " + c.a(this.f76014c, 1) + ", " + c.a(this.f76015d, 1);
        if (!y.a.c(j10, j11) || !y.a.c(j11, j12) || !y.a.c(j12, j13)) {
            return "RoundRect(rect=" + str + ", topLeft=" + ((Object) y.a.g(j10)) + ", topRight=" + ((Object) y.a.g(j11)) + ", bottomRight=" + ((Object) y.a.g(j12)) + ", bottomLeft=" + ((Object) y.a.g(j13)) + ')';
        }
        if (y.a.d(j10) == y.a.e(j10)) {
            return "RoundRect(rect=" + str + ", radius=" + c.a(y.a.d(j10), 1) + ')';
        }
        return "RoundRect(rect=" + str + ", x=" + c.a(y.a.d(j10), 1) + ", y=" + c.a(y.a.e(j10), 1) + ')';
    }

    private k(float f10, float f11, float f12, float f13, long j10, long j11, long j12, long j13) {
        this.f76012a = f10;
        this.f76013b = f11;
        this.f76014c = f12;
        this.f76015d = f13;
        this.f76016e = j10;
        this.f76017f = j11;
        this.f76018g = j12;
        this.f76019h = j13;
    }
}
