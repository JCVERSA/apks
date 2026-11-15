package defpackage;

public final class a9j extends kli implements k0j {
    private static final a9j zzb;
    private int zzd;
    private v5j zze;
    private long zzf;

    static {
        a9j a9jVar = new a9j();
        zzb = a9jVar;
        kli.f(a9j.class, a9jVar);
    }

    public static void A(a9j a9jVar, v5j v5jVar) {
        v5jVar.getClass();
        a9jVar.zze = v5jVar;
        a9jVar.zzd |= 1;
    }

    public static void B(a9j a9jVar, long j) {
        a9jVar.zzd |= 2;
        a9jVar.zzf = j;
    }

    public static w8j y() {
        return (w8j) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new a9j();
        }
        y8j y8jVar = null;
        if (i2 == 4) {
            return new w8j(y8jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
