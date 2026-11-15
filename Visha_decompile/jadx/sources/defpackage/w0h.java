package defpackage;

public final class w0h extends kli implements k0j {
    private static final w0h zzb;
    private int zzd;
    private String zze = "";

    static {
        w0h w0hVar = new w0h();
        zzb = w0hVar;
        kli.f(w0h.class, w0hVar);
    }

    public static w0h z() {
        return zzb;
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
            return kli.w(zzb, "\u0004\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0000\u0002ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new w0h();
        }
        vzg vzgVar = null;
        if (i2 == 4) {
            return new wyg(vzgVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
