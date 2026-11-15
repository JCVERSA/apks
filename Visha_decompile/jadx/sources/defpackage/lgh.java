package defpackage;

public final class lgh extends kli implements k0j {
    private static final lgh zzb;
    private int zzd;
    private String zze = "";

    static {
        lgh lghVar = new lgh();
        zzb = lghVar;
        kli.f(lgh.class, lghVar);
    }

    public static void A(lgh lghVar, String str) {
        lghVar.zzd |= 1;
        lghVar.zze = str;
    }

    public static jfh y() {
        return (jfh) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new lgh();
        }
        lhh lhhVar = null;
        if (i2 == 4) {
            return new jfh(lhhVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
