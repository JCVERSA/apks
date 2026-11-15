package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

public final class g0 implements d0 {

    private final int f2134a;

    private final int f2135b;

    private final z f2136c;

    private final long f2137d;

    private final long f2138e;

    public g0() {
        this(0, 0, null, 7, null);
    }

    private final long f(long j10) {
        return RangesKt.m(j10 - this.f2138e, 0L, this.f2137d);
    }

    @Override
    public v0 a(s0 s0Var) {
        return a(s0Var);
    }

    @Override
    public float b(float f10, float f11, float f12) {
        return c0.a(this, f10, f11, f12);
    }

    @Override
    public float c(long j10, float f10, float f11, float f12) {
        float f13 = this.f2134a == 0 ? 1.0f : f(j10) / this.f2137d;
        z zVar = this.f2136c;
        if (f13 < 0.0f) {
            f13 = 0.0f;
        }
        return VectorConvertersKt.k(f10, f11, zVar.a(f13 <= 1.0f ? f13 : 1.0f));
    }

    @Override
    public float d(long j10, float f10, float f11, float f12) {
        long jF = f(j10);
        if (jF < 0) {
            return 0.0f;
        }
        if (jF == 0) {
            return f12;
        }
        return (c(jF, f10, f11, f12) - c(jF - 1000000, f10, f11, f12)) * 1000.0f;
    }

    @Override
    public long e(float f10, float f11, float f12) {
        return ((long) (this.f2135b + this.f2134a)) * 1000000;
    }

    public g0(int i10, int i11, z zVar) {
        this.f2134a = i10;
        this.f2135b = i11;
        this.f2136c = zVar;
        this.f2137d = ((long) i10) * 1000000;
        this.f2138e = ((long) i11) * 1000000;
    }

    @Override
    public c1 a(s0 s0Var) {
        return c0.c(this, s0Var);
    }

    public g0(int i10, int i11, z zVar, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 300 : i10, (i12 & 2) != 0 ? 0 : i11, (i12 & 4) != 0 ? b0.c() : zVar);
    }
}
