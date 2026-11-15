package defpackage;

public final class s7j extends kli implements k0j {
    private static final s7j zzb;
    private int zzd;
    private int zze;
    private String zzf = "";

    static {
        s7j s7jVar = new s7j();
        zzb = s7jVar;
        kli.f(s7j.class, s7jVar);
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", q7j.a, "zzf"});
        }
        if (i2 == 3) {
            return new s7j();
        }
        u7j u7jVar = null;
        if (i2 == 4) {
            return new o7j(u7jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
