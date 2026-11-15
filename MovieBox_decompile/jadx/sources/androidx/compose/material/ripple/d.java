package androidx.compose.material.ripple;

import y.m;

public abstract class d {

    private static final float f3190a = o0.i.g(10);

    public static final float a(o0.e eVar, boolean z10, long j10) {
        float fK = y.g.k(y.h.a(m.i(j10), m.g(j10))) / 2.0f;
        return z10 ? fK + eVar.D0(f3190a) : fK;
    }

    public static final float b(long j10) {
        return Math.max(m.i(j10), m.g(j10)) * 0.3f;
    }
}
