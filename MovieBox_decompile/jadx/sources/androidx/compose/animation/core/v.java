package androidx.compose.animation.core;

import kotlin.ranges.RangesKt;

public final class v implements c {

    private final x0 f2194a;

    private final s0 f2195b;

    private final Object f2196c;

    private final o f2197d;

    private final o f2198e;

    private final o f2199f;

    private final Object f2200g;

    private final long f2201h;

    private final boolean f2202i;

    public v(x0 x0Var, s0 s0Var, Object obj, o oVar) {
        this.f2194a = x0Var;
        this.f2195b = s0Var;
        this.f2196c = obj;
        o oVar2 = (o) e().a().invoke(obj);
        this.f2197d = oVar2;
        this.f2198e = p.e(oVar);
        this.f2200g = e().b().invoke(x0Var.d(oVar2, oVar));
        this.f2201h = x0Var.c(oVar2, oVar);
        o oVarE = p.e(x0Var.b(d(), oVar2, oVar));
        this.f2199f = oVarE;
        int iB = oVarE.b();
        for (int i10 = 0; i10 < iB; i10++) {
            o oVar3 = this.f2199f;
            oVar3.e(i10, RangesKt.k(oVar3.a(i10), -this.f2194a.a(), this.f2194a.a()));
        }
    }

    @Override
    public boolean a() {
        return this.f2202i;
    }

    @Override
    public o b(long j10) {
        return !c(j10) ? this.f2194a.b(j10, this.f2197d, this.f2198e) : this.f2199f;
    }

    @Override
    public boolean c(long j10) {
        return b.a(this, j10);
    }

    @Override
    public long d() {
        return this.f2201h;
    }

    @Override
    public s0 e() {
        return this.f2195b;
    }

    @Override
    public Object f(long j10) {
        return !c(j10) ? e().b().invoke(this.f2194a.e(j10, this.f2197d, this.f2198e)) : g();
    }

    @Override
    public Object g() {
        return this.f2200g;
    }

    public v(w wVar, s0 s0Var, Object obj, o oVar) {
        this(wVar.a(s0Var), s0Var, obj, oVar);
    }
}
