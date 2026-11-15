package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class f0 implements d0 {

    private final float f2126a;

    private final float f2127b;

    private final float f2128c;

    private final m0 f2129d;

    public f0() {
        this(0.0f, 0.0f, 0.0f, 7, null);
    }

    @Override
    public v0 a(s0 s0Var) {
        return a(s0Var);
    }

    @Override
    public float b(float f10, float f11, float f12) {
        return 0.0f;
    }

    @Override
    public float c(long j10, float f10, float f11, float f12) {
        this.f2129d.e(f11);
        return i0.b(this.f2129d.g(f10, f12, j10 / 1000000));
    }

    @Override
    public float d(long j10, float f10, float f11, float f12) {
        this.f2129d.e(f11);
        return i0.c(this.f2129d.g(f10, f12, j10 / 1000000));
    }

    @Override
    public long e(float f10, float f11, float f12) {
        float fB = this.f2129d.b();
        float fA = this.f2129d.a();
        float f13 = f10 - f11;
        float f14 = this.f2128c;
        return l0.b(fB, fA, f12 / f14, f13 / f14, 1.0f) * 1000000;
    }

    public f0(float f10, float f11, float f12) {
        this.f2126a = f10;
        this.f2127b = f11;
        this.f2128c = f12;
        m0 m0Var = new m0(1.0f);
        m0Var.d(f10);
        m0Var.f(f11);
        this.f2129d = m0Var;
    }

    @Override
    public c1 a(s0 s0Var) {
        return c0.c(this, s0Var);
    }

    public f0(float f10, float f11, float f12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 1.0f : f10, (i10 & 2) != 0 ? 1500.0f : f11, (i10 & 4) != 0 ? 0.01f : f12);
    }
}
