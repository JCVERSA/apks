package androidx.compose.animation;

import androidx.compose.animation.core.e0;

public final class g implements e0 {

    private final d f2213a;

    public g(o0.e eVar) {
        this.f2213a = new d(h.a(), eVar);
    }

    private final float f(float f10) {
        return this.f2213a.b(f10) * Math.signum(f10);
    }

    @Override
    public float a() {
        return 0.0f;
    }

    @Override
    public float b(long j10, float f10, float f11) {
        return this.f2213a.d(f11).b(j10 / 1000000);
    }

    @Override
    public long c(float f10, float f11) {
        return this.f2213a.c(f11) * 1000000;
    }

    @Override
    public float d(float f10, float f11) {
        return f10 + f(f11);
    }

    @Override
    public float e(long j10, float f10, float f11) {
        return f10 + this.f2213a.d(f11).a(j10 / 1000000);
    }
}
