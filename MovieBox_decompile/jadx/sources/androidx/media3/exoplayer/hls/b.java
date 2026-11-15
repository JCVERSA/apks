package androidx.media3.exoplayer.hls;

import androidx.media3.common.util.p0;
import k2.l0;
import r3.k0;

public final class b implements j {

    private static final l0 f11382f = new l0();

    final k2.r f11383a;

    private final androidx.media3.common.r f11384b;

    private final p0 f11385c;

    private final h3.s.a f11386d;

    private final boolean f11387e;

    b(k2.r rVar, androidx.media3.common.r rVar2, p0 p0Var, h3.s.a aVar, boolean z10) {
        this.f11383a = rVar;
        this.f11384b = rVar2;
        this.f11385c = p0Var;
        this.f11386d = aVar;
        this.f11387e = z10;
    }

    @Override
    public boolean a(k2.s sVar) {
        return this.f11383a.d(sVar, f11382f) == 0;
    }

    @Override
    public void c() {
        this.f11383a.seek(0L, 0L);
    }

    @Override
    public boolean d() {
        k2.r rVarC = this.f11383a.c();
        return (rVarC instanceof k0) || (rVarC instanceof e3.h);
    }

    @Override
    public void e(k2.t tVar) {
        this.f11383a.e(tVar);
    }

    @Override
    public boolean f() {
        k2.r rVarC = this.f11383a.c();
        return (rVarC instanceof r3.h) || (rVarC instanceof r3.b) || (rVarC instanceof r3.e) || (rVarC instanceof d3.f);
    }

    @Override
    public j g() {
        k2.r fVar;
        androidx.media3.common.util.a.g(!d());
        androidx.media3.common.util.a.h(this.f11383a.c() == this.f11383a, "Can't recreate wrapped extractors. Outer type: " + this.f11383a.getClass());
        k2.r rVar = this.f11383a;
        if (rVar instanceof u) {
            fVar = new u(this.f11384b.f9838d, this.f11385c, this.f11386d, this.f11387e);
        } else if (rVar instanceof r3.h) {
            fVar = new r3.h();
        } else if (rVar instanceof r3.b) {
            fVar = new r3.b();
        } else if (rVar instanceof r3.e) {
            fVar = new r3.e();
        } else {
            if (!(rVar instanceof d3.f)) {
                throw new IllegalStateException("Unexpected extractor type for recreation: " + this.f11383a.getClass().getSimpleName());
            }
            fVar = new d3.f();
        }
        return new b(fVar, this.f11384b, this.f11385c, this.f11386d, this.f11387e);
    }
}
