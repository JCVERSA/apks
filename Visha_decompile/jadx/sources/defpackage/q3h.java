package defpackage;

public final class q3h extends kli implements k0j {
    private static final q3h zzb;
    private int zzd;
    private int zze;
    private wog zzf;

    static {
        q3h q3hVar = new q3h();
        zzb = q3hVar;
        kli.f(q3h.class, q3hVar);
    }

    public static q3h A(byte[] bArr) {
        return (q3h) kli.s(zzb, bArr);
    }

    public final boolean B() {
        return (this.zzd & 2) != 0;
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new q3h();
        }
        t2h t2hVar = null;
        if (i2 == 4) {
            return new u1h(t2hVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    public final wog y() {
        wog wogVar = this.zzf;
        return wogVar == null ? wog.z() : wogVar;
    }
}
