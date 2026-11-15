package o0;

public abstract class m {
    public static float a(n nVar, long j10) {
        if (!y.g(w.g(j10), y.f67433b.b())) {
            o.b("Only Sp can convert to Px");
        }
        p0.b bVar = p0.b.f68952a;
        if (!bVar.f(nVar.B0())) {
            return i.g(w.h(j10) * nVar.B0());
        }
        p0.a aVarB = bVar.b(nVar.B0());
        return aVarB == null ? i.g(w.h(j10) * nVar.B0()) : i.g(aVarB.b(w.h(j10)));
    }

    public static long b(n nVar, float f10) {
        p0.b bVar = p0.b.f68952a;
        if (!bVar.f(nVar.B0())) {
            return x.b(f10 / nVar.B0());
        }
        p0.a aVarB = bVar.b(nVar.B0());
        return x.b(aVarB != null ? aVarB.a(f10) : f10 / nVar.B0());
    }
}
