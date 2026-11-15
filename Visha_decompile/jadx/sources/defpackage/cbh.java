package defpackage;

public final class cbh extends kli implements k0j {
    private static final cbh zzb;
    private int zzd;
    private int zze;
    private String zzf = "";

    static {
        cbh cbhVar = new cbh();
        zzb = cbhVar;
        kli.f(cbh.class, cbhVar);
    }

    public static cbh A(byte[] bArr) {
        return (cbh) kli.s(zzb, bArr);
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
            return kli.w(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new cbh();
        }
        ieh iehVar = null;
        if (i2 == 4) {
            return new aah(iehVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int y() {
        return this.zze;
    }
}
