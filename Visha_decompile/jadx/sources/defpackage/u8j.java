package defpackage;

public final class u8j extends kli implements k0j {
    private static final u8j zzb;
    private int zzd;
    private int zze;

    static {
        u8j u8jVar = new u8j();
        zzb = u8jVar;
        kli.f(u8j.class, u8jVar);
    }

    public static void A(u8j u8jVar, int i) {
        u8jVar.zze = i - 1;
        u8jVar.zzd |= 1;
    }

    public static o8j y() {
        return (o8j) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", q8j.a});
        }
        if (i2 == 3) {
            return new u8j();
        }
        s8j s8jVar = null;
        if (i2 == 4) {
            return new o8j(s8jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
