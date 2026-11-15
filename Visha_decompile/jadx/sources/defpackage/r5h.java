package defpackage;

public final class r5h extends kli implements k0j {
    private static final r5h zzb;
    private int zzd;
    private lgh zze;
    private lgh zzf;
    private int zzg;

    static {
        r5h r5hVar = new r5h();
        zzb = r5hVar;
        kli.f(r5h.class, r5hVar);
    }

    public static void A(r5h r5hVar, lgh lghVar) {
        lghVar.getClass();
        r5hVar.zze = lghVar;
        r5hVar.zzd |= 1;
    }

    public static void B(r5h r5hVar, lgh lghVar) {
        lghVar.getClass();
        r5hVar.zzf = lghVar;
        r5hVar.zzd |= 2;
    }

    public static void C(r5h r5hVar, int i) {
        r5hVar.zzg = i - 1;
        r5hVar.zzd |= 4;
    }

    public static s4h y() {
        return (s4h) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", "zzf", "zzg", ijh.a()});
        }
        if (i2 == 3) {
            return new r5h();
        }
        x8h x8hVar = null;
        if (i2 == 4) {
            return new s4h(x8hVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
