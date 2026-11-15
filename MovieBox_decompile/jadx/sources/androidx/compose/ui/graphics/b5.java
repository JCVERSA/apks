package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b5 extends j1 {

    private final long f3982c;

    public b5(long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10);
    }

    @Override
    public void a(long j10, m4 m4Var, float f10) {
        long jK;
        m4Var.setAlpha(1.0f);
        if (f10 == 1.0f) {
            jK = this.f3982c;
        } else {
            long j11 = this.f3982c;
            jK = u1.k(j11, u1.n(j11) * f10, 0.0f, 0.0f, 0.0f, 14, null);
        }
        m4Var.s(jK);
        if (m4Var.y() != null) {
            m4Var.x(null);
        }
    }

    public final long b() {
        return this.f3982c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b5) && u1.m(this.f3982c, ((b5) obj).f3982c);
    }

    public int hashCode() {
        return u1.s(this.f3982c);
    }

    public String toString() {
        return "SolidColor(value=" + ((Object) u1.t(this.f3982c)) + ')';
    }

    private b5(long j10) {
        super(null);
        this.f3982c = j10;
    }
}
