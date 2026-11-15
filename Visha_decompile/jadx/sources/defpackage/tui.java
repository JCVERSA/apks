package defpackage;

import libcore.io.Memory;
import sun.misc.Unsafe;

public final class tui extends uui {
    public tui(Unsafe unsafe) {
        super(unsafe);
    }

    @Override
    public final byte a(long j) {
        return Memory.peekByte(j);
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
        Memory.peekByteArray(j, bArr, (int) j2, (int) j3);
    }

    /* JADX WARN: Failed to inline method: vui.s(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: vui.t(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r4v0 'z' boolean)' in method call: vui.s(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r4v0 'z' boolean)' in method call: vui.t(java.lang.Object, long, boolean):void */
    @Override
    public final void e(Object obj, long j, boolean z) {
        if (vui.i) {
            vui.s(obj, j, z);
        } else {
            vui.t(obj, j, z);
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
