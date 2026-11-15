package defpackage;

public final class v4j extends kli implements k0j {
    private static final v4j zzb;
    private int zzd = 0;
    private Object zze;

    static {
        v4j v4jVar = new v4j();
        zzb = v4jVar;
        kli.f(v4j.class, v4jVar);
    }

    public static v4j A() {
        return zzb;
    }

    public static void B(v4j v4jVar, String str) {
        str.getClass();
        v4jVar.zzd = 3;
        v4jVar.zze = str;
    }

    public static o4j y() {
        return (o4j) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new r1j(zzb, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001?\u0000\u00023\u0000\u0003Ȼ\u0000\u0004:\u0000\u0005<\u0000\u0006<\u0000", new Object[]{"zze", "zzd", z2j.class, hzi.class});
        }
        if (i2 == 3) {
            return new v4j();
        }
        r4j r4jVar = null;
        if (i2 == 4) {
            return new o4j(r4jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
