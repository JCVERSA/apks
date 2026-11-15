package defpackage;

public final class hzi extends kli implements k0j {
    private static final hzi zzb;
    private npi zzd = f1j.f();

    static {
        hzi hziVar = new hzi();
        zzb = hziVar;
        kli.f(hzi.class, hziVar);
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new r1j(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", v4j.class});
        }
        if (i2 == 3) {
            return new hzi();
        }
        dzi dziVar = null;
        if (i2 == 4) {
            return new zyi(dziVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
