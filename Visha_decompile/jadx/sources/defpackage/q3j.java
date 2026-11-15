package defpackage;

import sun.misc.Unsafe;

public final class q3j extends v3j {
    public q3j(Unsafe unsafe) {
        super(unsafe);
    }

    @Override
    public final double a(Object obj, long j) {
        return Double.longBitsToDouble(this.a.getLong(obj, j));
    }

    @Override
    public final float b(Object obj, long j) {
        return Float.intBitsToFloat(this.a.getInt(obj, j));
    }

    @Override
    public final void c(Object obj, long j, boolean z) {
        if (x3j.f) {
            x3j.i(obj, j, z);
        } else {
            x3j.j(obj, j, z);
        }
    }

    @Override
    public final void d(Object obj, long j, double d) {
        this.a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override
    public final void e(Object obj, long j, float f) {
        this.a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override
    public final boolean f(Object obj, long j) {
        return x3j.f ? x3j.q(obj, j) : x3j.r(obj, j);
    }
}
