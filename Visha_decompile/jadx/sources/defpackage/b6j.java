package defpackage;

public final class b6j extends kli implements k0j {
    private static final b6j zzb;

    static {
        b6j b6jVar = new b6j();
        zzb = b6jVar;
        kli.f(b6j.class, b6jVar);
    }

    public static b6j z() {
        return zzb;
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        z5j z5jVar = null;
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0000", null);
        }
        if (i2 == 3) {
            return new b6j();
        }
        if (i2 == 4) {
            return new x5j(z5jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
