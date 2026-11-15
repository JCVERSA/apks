package defpackage;

public final class w7j extends kli implements k0j {
    private static final w7j zzb;
    private int zzd;
    private npi zze = kli.u();
    private String zzf = "";
    private boolean zzg;

    static {
        w7j w7jVar = new w7j();
        zzb = w7jVar;
        kli.f(w7j.class, w7jVar);
    }

    public static void A(w7j w7jVar, boolean z) {
        w7jVar.zzd |= 2;
        w7jVar.zzg = z;
    }

    public static w7j z() {
        return zzb;
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဇ\u0001", new Object[]{"zzd", "zze", s7j.class, "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new w7j();
        }
        u7j u7jVar = null;
        if (i2 == 4) {
            return new n7j(u7jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
