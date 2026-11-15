package androidx.compose.animation.core;

public final class s {

    private double f2184a;

    private double f2185b;

    public s(double d10, double d11) {
        this.f2184a = d10;
        this.f2185b = d11;
    }

    public final double e() {
        return this.f2185b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return Double.compare(this.f2184a, sVar.f2184a) == 0 && Double.compare(this.f2185b, sVar.f2185b) == 0;
    }

    public final double f() {
        return this.f2184a;
    }

    public int hashCode() {
        return (r.a(this.f2184a) * 31) + r.a(this.f2185b);
    }

    public String toString() {
        return "ComplexDouble(_real=" + this.f2184a + ", _imaginary=" + this.f2185b + ')';
    }
}
