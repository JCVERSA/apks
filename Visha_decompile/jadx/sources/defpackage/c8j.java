package defpackage;

public final class c8j extends kli implements k0j {
    private static final c8j zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private v6j zzg;
    private e7j zzh;

    static {
        c8j c8jVar = new c8j();
        zzb = c8jVar;
        kli.f(c8j.class, c8jVar);
    }

    public static y7j A() {
        return (y7j) zzb.o();
    }

    public static void C(c8j c8jVar, f5j f5jVar) {
        c8jVar.zzf = f5jVar;
        c8jVar.zze = 2;
    }

    public static void D(c8j c8jVar, n5j n5jVar) {
        c8jVar.zzf = n5jVar;
        c8jVar.zze = 3;
    }

    public static void E(c8j c8jVar, b6j b6jVar) {
        b6jVar.getClass();
        c8jVar.zzf = b6jVar;
        c8jVar.zze = 7;
    }

    public static void F(c8j c8jVar, p6j p6jVar) {
        p6jVar.getClass();
        c8jVar.zzf = p6jVar;
        c8jVar.zze = 5;
    }

    public static void G(c8j c8jVar, v6j v6jVar) {
        v6jVar.getClass();
        c8jVar.zzg = v6jVar;
        c8jVar.zzd |= 1;
    }

    public static void y(c8j c8jVar, a9j a9jVar) {
        a9jVar.getClass();
        c8jVar.zzf = a9jVar;
        c8jVar.zze = 8;
    }

    public static void z(c8j c8jVar, i9j i9jVar) {
        c8jVar.zzf = i9jVar;
        c8jVar.zze = 4;
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\b\u0001\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006ဉ\u0001\u0007<\u0000\b<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", f5j.class, n5j.class, i9j.class, p6j.class, "zzh", b6j.class, a9j.class});
        }
        if (i2 == 3) {
            return new c8j();
        }
        a8j a8jVar = null;
        if (i2 == 4) {
            return new y7j(a8jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
