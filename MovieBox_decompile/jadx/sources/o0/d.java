package o0;

public abstract class d {
    public static int a(e eVar, float f10) {
        float fD0 = eVar.D0(f10);
        if (Float.isInfinite(fD0)) {
            return Integer.MAX_VALUE;
        }
        return Math.round(fD0);
    }

    public static float b(e eVar, float f10) {
        return i.g(f10 / eVar.getDensity());
    }

    public static float c(e eVar, long j10) {
        if (y.g(w.g(j10), y.f67433b.b())) {
            return eVar.D0(eVar.J(j10));
        }
        throw new IllegalStateException("Only Sp can convert to Px");
    }

    public static float d(e eVar, float f10) {
        return f10 * eVar.getDensity();
    }

    public static long e(e eVar, long j10) {
        return j10 != 9205357640488583168L ? y.n.a(eVar.D0(l.d(j10)), eVar.D0(l.c(j10))) : y.m.f76020b.a();
    }

    public static long f(e eVar, float f10) {
        return eVar.H(eVar.x0(f10));
    }
}
