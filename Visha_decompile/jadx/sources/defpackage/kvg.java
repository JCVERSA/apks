package defpackage;

public final class kvg extends kli implements k0j {
    private static final kvg zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";

    static {
        kvg kvgVar = new kvg();
        zzb = kvgVar;
        kli.f(kvg.class, kvgVar);
    }

    public static kvg z(byte[] bArr) {
        return (kvg) kli.s(zzb, bArr);
    }

    public final String A() {
        return this.zze;
    }

    public final String B() {
        return this.zzf;
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new kvg();
        }
        xtg xtgVar = null;
        if (i2 == 4) {
            return new vsg(xtgVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
