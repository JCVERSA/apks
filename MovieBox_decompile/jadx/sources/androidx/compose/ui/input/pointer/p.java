package androidx.compose.ui.input.pointer;

public abstract class p {
    public static final boolean a(w wVar) {
        return (wVar.p() || wVar.l() || !wVar.i()) ? false : true;
    }

    public static final boolean b(w wVar) {
        return !wVar.l() && wVar.i();
    }

    public static final boolean c(w wVar) {
        return (wVar.p() || !wVar.l() || wVar.i()) ? false : true;
    }

    public static final boolean d(w wVar) {
        return wVar.l() && !wVar.i();
    }

    public static final boolean e(w wVar, long j10) {
        long jH = wVar.h();
        float fM = y.g.m(jH);
        float fN = y.g.n(jH);
        return fM < 0.0f || fM > ((float) o0.t.g(j10)) || fN < 0.0f || fN > ((float) o0.t.f(j10));
    }

    public static final boolean f(w wVar, long j10, long j11) {
        if (!h0.g(wVar.n(), h0.f4689a.d())) {
            return e(wVar, j10);
        }
        long jH = wVar.h();
        float fM = y.g.m(jH);
        float fN = y.g.n(jH);
        return fM < (-y.m.i(j11)) || fM > ((float) o0.t.g(j10)) + y.m.i(j11) || fN < (-y.m.g(j11)) || fN > ((float) o0.t.f(j10)) + y.m.g(j11);
    }

    public static final long g(w wVar) {
        return i(wVar, false);
    }

    public static final long h(w wVar) {
        return i(wVar, true);
    }

    private static final long i(w wVar, boolean z10) {
        long jQ = y.g.q(wVar.h(), wVar.k());
        return (z10 || !wVar.p()) ? jQ : y.g.f75999b.c();
    }

    public static final boolean j(w wVar) {
        return !y.g.j(i(wVar, true), y.g.f75999b.c());
    }
}
