package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class f1 implements z0 {

    private final int f2130a;

    private final int f2131b;

    private final z f2132c;

    private final c1 f2133d;

    public f1() {
        this(0, 0, null, 7, null);
    }

    @Override
    public boolean a() {
        return a1.a(this);
    }

    @Override
    public int b() {
        return this.f2131b;
    }

    @Override
    public o c(o oVar, o oVar2, o oVar3) {
        return u0.a(this, oVar, oVar2, oVar3);
    }

    @Override
    public int d() {
        return this.f2130a;
    }

    @Override
    public o e(long j10, o oVar, o oVar2, o oVar3) {
        return this.f2133d.e(j10, oVar, oVar2, oVar3);
    }

    @Override
    public long f(o oVar, o oVar2, o oVar3) {
        return y0.a(this, oVar, oVar2, oVar3);
    }

    @Override
    public o g(long j10, o oVar, o oVar2, o oVar3) {
        return this.f2133d.g(j10, oVar, oVar2, oVar3);
    }

    public f1(int i10, int i11, z zVar) {
        this.f2130a = i10;
        this.f2131b = i11;
        this.f2132c = zVar;
        this.f2133d = new c1(new g0(d(), b(), zVar));
    }

    public f1(int i10, int i11, z zVar, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 300 : i10, (i12 & 2) != 0 ? 0 : i11, (i12 & 4) != 0 ? b0.c() : zVar);
    }
}
