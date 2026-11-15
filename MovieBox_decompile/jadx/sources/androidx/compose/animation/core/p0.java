package androidx.compose.animation.core;

public final class p0 implements c {

    private final v0 f2172a;

    private final s0 f2173b;

    private Object f2174c;

    private Object f2175d;

    private o f2176e;

    private o f2177f;

    private final o f2178g;

    private long f2179h;

    private o f2180i;

    public p0(v0 v0Var, s0 s0Var, Object obj, Object obj2, o oVar) {
        o oVarE;
        this.f2172a = v0Var;
        this.f2173b = s0Var;
        this.f2174c = obj2;
        this.f2175d = obj;
        this.f2176e = (o) e().a().invoke(obj);
        this.f2177f = (o) e().a().invoke(obj2);
        this.f2178g = (oVar == null || (oVarE = p.e(oVar)) == null) ? p.g((o) e().a().invoke(obj)) : oVarE;
        this.f2179h = -1L;
    }

    private final o h() {
        o oVar = this.f2180i;
        if (oVar != null) {
            return oVar;
        }
        o oVarC = this.f2172a.c(this.f2176e, this.f2177f, this.f2178g);
        this.f2180i = oVarC;
        return oVarC;
    }

    @Override
    public boolean a() {
        return this.f2172a.a();
    }

    @Override
    public o b(long j10) {
        return !c(j10) ? this.f2172a.e(j10, this.f2176e, this.f2177f, this.f2178g) : h();
    }

    @Override
    public boolean c(long j10) {
        return b.a(this, j10);
    }

    @Override
    public long d() {
        if (this.f2179h < 0) {
            this.f2179h = this.f2172a.f(this.f2176e, this.f2177f, this.f2178g);
        }
        return this.f2179h;
    }

    @Override
    public s0 e() {
        return this.f2173b;
    }

    @Override
    public Object f(long j10) {
        if (c(j10)) {
            return g();
        }
        o oVarG = this.f2172a.g(j10, this.f2176e, this.f2177f, this.f2178g);
        int iB = oVarG.b();
        for (int i10 = 0; i10 < iB; i10++) {
            if (Float.isNaN(oVarG.a(i10))) {
                k0.b("AnimationVector cannot contain a NaN. " + oVarG + ". Animation: " + this + ", playTimeNanos: " + j10);
            }
        }
        return e().b().invoke(oVarG);
    }

    @Override
    public Object g() {
        return this.f2174c;
    }

    public final Object i() {
        return this.f2175d;
    }

    public String toString() {
        return "TargetBasedAnimation: " + i() + " -> " + g() + ",initial velocity: " + this.f2178g + ", duration: " + d.b(this) + " ms,animationSpec: " + this.f2172a;
    }

    public p0(g gVar, s0 s0Var, Object obj, Object obj2, o oVar) {
        this(gVar.a(s0Var), s0Var, obj, obj2, oVar);
    }
}
