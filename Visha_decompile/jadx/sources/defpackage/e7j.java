package defpackage;

public final class e7j extends kli implements k0j {
    private static final e7j zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;

    static {
        e7j e7jVar = new e7j();
        zzb = e7jVar;
        kli.f(e7j.class, e7jVar);
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new e7j();
        }
        c7j c7jVar = null;
        if (i2 == 4) {
            return new y6j(c7jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
