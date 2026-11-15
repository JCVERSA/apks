package androidx.compose.animation.core;

public final class e1 implements b1 {

    private final float f2114a;

    private final float f2115b;

    private final c1 f2116c;

    private e1(float f10, float f11, q qVar) {
        this.f2114a = f10;
        this.f2115b = f11;
        this.f2116c = new c1(qVar);
    }

    @Override
    public boolean a() {
        return this.f2116c.a();
    }

    @Override
    public o c(o oVar, o oVar2, o oVar3) {
        return this.f2116c.c(oVar, oVar2, oVar3);
    }

    @Override
    public o e(long j10, o oVar, o oVar2, o oVar3) {
        return this.f2116c.e(j10, oVar, oVar2, oVar3);
    }

    @Override
    public long f(o oVar, o oVar2, o oVar3) {
        return this.f2116c.f(oVar, oVar2, oVar3);
    }

    @Override
    public o g(long j10, o oVar, o oVar2, o oVar3) {
        return this.f2116c.g(j10, oVar, oVar2, oVar3);
    }

    public e1(float f10, float f11, o oVar) {
        this(f10, f11, w0.b(oVar, f10, f11));
    }
}
