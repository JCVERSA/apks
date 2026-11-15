package defpackage;

import libcore.io.Memory;
import sun.misc.Unsafe;

public final class sui extends uui {
    public sui(Unsafe unsafe) {
        super(unsafe);
    }

    @Override
    public final byte a(long j) {
        return Memory.peekByte((int) j);
    }

    @Override
    public final double b(Object obj, long j) {
        return Double.longBitsToDouble(this.a.getLong(obj, j));
    }

    @Override
    public final float c(Object obj, long j) {
        return Float.intBitsToFloat(this.a.getInt(obj, j));
    }

    @Override
    public final void d(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray((int) j, bArr, (int) j2, (int) j3);
    }

    @Override
    public final void e(Object obj, long j, boolean z) {
        if (vui.i) {
            vui.g(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            vui.h(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override
    public final void f(Object obj, long j, byte b) {
        if (vui.i) {
            vui.g(obj, j, b);
        } else {
            vui.h(obj, j, b);
        }
    }

    @Override
    public final void g(Object obj, long j, double d) {
        this.a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override
    public final void h(Object obj, long j, float f) {
        this.a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override
    public final boolean i(Object obj, long j) {
        return vui.i ? vui.E(obj, j) : vui.F(obj, j);
    }
}
