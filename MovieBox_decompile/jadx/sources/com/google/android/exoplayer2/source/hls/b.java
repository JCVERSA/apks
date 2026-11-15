package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.l0;
import i9.a0;
import s9.h0;

public final class b implements j {

    private static final a0 f25281d = new a0();

    final i9.l f25282a;

    private final p1 f25283b;

    private final l0 f25284c;

    public b(i9.l lVar, p1 p1Var, l0 l0Var) {
        this.f25282a = lVar;
        this.f25283b = p1Var;
        this.f25284c = l0Var;
    }

    @Override
    public boolean a(i9.m mVar) {
        return this.f25282a.d(mVar, f25281d) == 0;
    }

    @Override
    public void b(i9.n nVar) {
        this.f25282a.b(nVar);
    }

    @Override
    public void c() {
        this.f25282a.seek(0L, 0L);
    }

    @Override
    public boolean d() {
        i9.l lVar = this.f25282a;
        return (lVar instanceof h0) || (lVar instanceof q9.g);
    }

    @Override
    public boolean f() {
        i9.l lVar = this.f25282a;
        return (lVar instanceof s9.h) || (lVar instanceof s9.b) || (lVar instanceof s9.e) || (lVar instanceof p9.f);
    }

    @Override
    public j g() {
        i9.l fVar;
        com.google.android.exoplayer2.util.a.g(!d());
        i9.l lVar = this.f25282a;
        if (lVar instanceof r) {
            fVar = new r(this.f25283b.f24892c, this.f25284c);
        } else if (lVar instanceof s9.h) {
            fVar = new s9.h();
        } else if (lVar instanceof s9.b) {
            fVar = new s9.b();
        } else if (lVar instanceof s9.e) {
            fVar = new s9.e();
        } else {
            if (!(lVar instanceof p9.f)) {
                throw new IllegalStateException("Unexpected extractor type for recreation: " + this.f25282a.getClass().getSimpleName());
            }
            fVar = new p9.f();
        }
        return new b(fVar, this.f25283b, this.f25284c);
    }
}
