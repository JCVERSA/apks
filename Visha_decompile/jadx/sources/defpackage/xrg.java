package defpackage;

public final class xrg extends kli implements k0j {
    private static final xrg zzb;
    private int zzd = 0;
    private Object zze;

    static {
        xrg xrgVar = new xrg();
        zzb = xrgVar;
        kli.f(xrg.class, xrgVar);
    }

    public static xrg z(byte[] bArr) {
        return (xrg) kli.s(zzb, bArr);
    }

    public final w0h A() {
        return this.zzd == 2 ? (w0h) this.zze : w0h.z();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001;\u0000\u0002<\u0000", new Object[]{"zze", "zzd", w0h.class});
        }
        if (i2 == 3) {
            return new xrg();
        }
        vqg vqgVar = null;
        if (i2 == 4) {
            return new wpg(vqgVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
