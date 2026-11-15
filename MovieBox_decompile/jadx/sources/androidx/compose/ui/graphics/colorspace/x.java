package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class x {

    private final double f4109a;

    private final double f4110b;

    private final double f4111c;

    private final double f4112d;

    private final double f4113e;

    private final double f4114f;

    private final double f4115g;

    public x(double d10, double d11, double d12, double d13, double d14, double d15, double d16) {
        this.f4109a = d10;
        this.f4110b = d11;
        this.f4111c = d12;
        this.f4112d = d13;
        this.f4113e = d14;
        this.f4114f = d15;
        this.f4115g = d16;
        if (Double.isNaN(d11) || Double.isNaN(d12) || Double.isNaN(d13) || Double.isNaN(d14) || Double.isNaN(d15) || Double.isNaN(d16) || Double.isNaN(d10)) {
            throw new IllegalArgumentException("Parameters cannot be NaN");
        }
        if (d14 < 0.0d || d14 > 1.0d) {
            throw new IllegalArgumentException("Parameter d must be in the range [0..1], was " + d14);
        }
        if (d14 == 0.0d && (d11 == 0.0d || d10 == 0.0d)) {
            throw new IllegalArgumentException("Parameter a or g is zero, the transfer function is constant");
        }
        if (d14 >= 1.0d && d13 == 0.0d) {
            throw new IllegalArgumentException("Parameter c is zero, the transfer function is constant");
        }
        if ((d11 == 0.0d || d10 == 0.0d) && d13 == 0.0d) {
            throw new IllegalArgumentException("Parameter a or g is zero, and c is zero, the transfer function is constant");
        }
        if (d13 < 0.0d) {
            throw new IllegalArgumentException("The transfer function must be increasing");
        }
        if (d11 < 0.0d || d10 < 0.0d) {
            throw new IllegalArgumentException("The transfer function must be positive or increasing");
        }
    }

    public final double a() {
        return this.f4110b;
    }

    public final double b() {
        return this.f4111c;
    }

    public final double c() {
        return this.f4112d;
    }

    public final double d() {
        return this.f4113e;
    }

    public final double e() {
        return this.f4114f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return Double.compare(this.f4109a, xVar.f4109a) == 0 && Double.compare(this.f4110b, xVar.f4110b) == 0 && Double.compare(this.f4111c, xVar.f4111c) == 0 && Double.compare(this.f4112d, xVar.f4112d) == 0 && Double.compare(this.f4113e, xVar.f4113e) == 0 && Double.compare(this.f4114f, xVar.f4114f) == 0 && Double.compare(this.f4115g, xVar.f4115g) == 0;
    }

    public final double f() {
        return this.f4115g;
    }

    public final double g() {
        return this.f4109a;
    }

    public int hashCode() {
        return (((((((((((androidx.compose.animation.core.r.a(this.f4109a) * 31) + androidx.compose.animation.core.r.a(this.f4110b)) * 31) + androidx.compose.animation.core.r.a(this.f4111c)) * 31) + androidx.compose.animation.core.r.a(this.f4112d)) * 31) + androidx.compose.animation.core.r.a(this.f4113e)) * 31) + androidx.compose.animation.core.r.a(this.f4114f)) * 31) + androidx.compose.animation.core.r.a(this.f4115g);
    }

    public String toString() {
        return "TransferParameters(gamma=" + this.f4109a + ", a=" + this.f4110b + ", b=" + this.f4111c + ", c=" + this.f4112d + ", d=" + this.f4113e + ", e=" + this.f4114f + ", f=" + this.f4115g + ')';
    }

    public x(double d10, double d11, double d12, double d13, double d14, double d15, double d16, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(d10, d11, d12, d13, d14, (i10 & 32) != 0 ? 0.0d : d15, (i10 & 64) != 0 ? 0.0d : d16);
    }
}
