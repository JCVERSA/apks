package defpackage;

public final class w7h extends kli implements k0j {
    private static final w7h zzb;
    private npi zzd = kli.u();

    static {
        w7h w7hVar = new w7h();
        zzb = w7hVar;
        kli.f(w7h.class, w7hVar);
    }

    public static void A(w7h w7hVar, Iterable iterable) {
        npi npiVar = w7hVar.zzd;
        if (!npiVar.zzc()) {
            int size = npiVar.size();
            w7hVar.zzd = npiVar.d(size + size);
        }
        plh.d(iterable, w7hVar.zzd);
    }

    public static t6h y() {
        return (t6h) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", r5h.class});
        }
        if (i2 == 3) {
            return new w7h();
        }
        x8h x8hVar = null;
        if (i2 == 4) {
            return new t6h(x8hVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
