package defpackage;

public final class wog extends kli implements k0j {
    private static final wog zzb;
    private int zzd;
    private int zze;
    private boolean zzf;

    static {
        wog wogVar = new wog();
        zzb = wogVar;
        kli.f(wog.class, wogVar);
    }

    public static wog z() {
        return zzb;
    }

    public final boolean A() {
        return this.zzf;
    }

    public final int B() {
        int i = this.zze;
        int i2 = 2;
        if (i != 0) {
            if (i != 1) {
                i2 = i != 2 ? 0 : 4;
            } else {
                i2 = 3;
            }
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new wog();
        }
        gog gogVar = null;
        if (i2 == 4) {
            return new nng(gogVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
