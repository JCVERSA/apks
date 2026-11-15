package defpackage;

public final class m7j extends kli implements k0j {
    private static final m7j zzb;
    private int zzd;
    private int zze;

    static {
        m7j m7jVar = new m7j();
        zzb = m7jVar;
        kli.f(m7j.class, m7jVar);
    }

    public static void A(m7j m7jVar, int i) {
        m7jVar.zze = i - 1;
        m7jVar.zzd |= 1;
    }

    public static f7j y() {
        return (f7j) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", h7j.a});
        }
        if (i2 == 3) {
            return new m7j();
        }
        k7j k7jVar = null;
        if (i2 == 4) {
            return new f7j(k7jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
