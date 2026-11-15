package defpackage;

public final class i9j extends kli implements k0j {
    private static final i9j zzb;
    private int zzd;
    private int zze;

    static {
        i9j i9jVar = new i9j();
        zzb = i9jVar;
        kli.f(i9j.class, i9jVar);
    }

    public static i9j z() {
        return zzb;
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", e9j.a});
        }
        if (i2 == 3) {
            return new i9j();
        }
        g9j g9jVar = null;
        if (i2 == 4) {
            return new b9j(g9jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
