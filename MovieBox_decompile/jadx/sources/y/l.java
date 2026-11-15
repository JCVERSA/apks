package y;

public abstract class l {
    public static final k a(float f10, float f11, float f12, float f13, float f14, float f15) {
        long jA = b.a(f14, f15);
        return new k(f10, f11, f12, f13, jA, jA, jA, jA, null);
    }

    public static final k b(i iVar, long j10, long j11, long j12, long j13) {
        return new k(iVar.f(), iVar.i(), iVar.g(), iVar.c(), j10, j11, j12, j13, null);
    }

    public static final k c(float f10, float f11, float f12, float f13, long j10) {
        return a(f10, f11, f12, f13, a.d(j10), a.e(j10));
    }

    public static final i d(k kVar) {
        return new i(kVar.e(), kVar.g(), kVar.f(), kVar.a());
    }

    public static final boolean e(k kVar) {
        return a.d(kVar.h()) == a.e(kVar.h()) && a.d(kVar.h()) == a.d(kVar.i()) && a.d(kVar.h()) == a.e(kVar.i()) && a.d(kVar.h()) == a.d(kVar.c()) && a.d(kVar.h()) == a.e(kVar.c()) && a.d(kVar.h()) == a.d(kVar.b()) && a.d(kVar.h()) == a.e(kVar.b());
    }
}
