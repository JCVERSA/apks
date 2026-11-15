package defpackage;

public final class p9j extends kli implements k0j {
    private static final p9j zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;

    static {
        p9j p9jVar = new p9j();
        zzb = p9jVar;
        kli.f(p9j.class, p9jVar);
    }

    public static void A(p9j p9jVar, boolean z) {
        p9jVar.zzd |= 8;
        p9jVar.zzh = z;
    }

    public static void B(p9j p9jVar, int i) {
        p9jVar.zzd |= 16;
        p9jVar.zzi = i;
    }

    public static void C(p9j p9jVar, long j) {
        p9jVar.zzd |= 4;
        p9jVar.zzg = j;
    }

    public static void D(p9j p9jVar, int i) {
        p9jVar.zzd |= 32;
        p9jVar.zzj = i;
    }

    public static void E(p9j p9jVar, boolean z) {
        p9jVar.zzd |= 2;
        p9jVar.zzf = true;
    }

    public static l9j y() {
        return (l9j) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003\u0005င\u0004\u0006င\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new p9j();
        }
        n9j n9jVar = null;
        if (i2 == 4) {
            return new l9j(n9jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
