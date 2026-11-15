package defpackage;

public final class byg extends kli implements k0j {
    private static final byg zzb;
    private int zzd;
    private String zze = "";

    static {
        byg bygVar = new byg();
        zzb = bygVar;
        kli.f(byg.class, bygVar);
    }

    public static byg z(byte[] bArr) {
        return (byg) kli.s(zzb, bArr);
    }

    public final String A() {
        return this.zze;
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
            return new byg();
        }
        dxg dxgVar = null;
        if (i2 == 4) {
            return new lwg(dxgVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
