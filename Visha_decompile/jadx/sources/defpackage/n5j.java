package defpackage;

import com.google.android.gms.internal.play_billing.zzjz;

public final class n5j extends kli implements k0j {
    private static final n5j zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private int zzh;

    static {
        n5j n5jVar = new n5j();
        zzb = n5jVar;
        kli.f(n5j.class, n5jVar);
    }

    public static void C(n5j n5jVar, zzjz zzjzVar) {
        n5jVar.zzh = zzjzVar.zza();
        n5jVar.zzd |= 2;
    }

    public static void D(n5j n5jVar, m7j m7jVar) {
        m7jVar.getClass();
        n5jVar.zzf = m7jVar;
        n5jVar.zze = 2;
    }

    public static void E(n5j n5jVar, w7j w7jVar) {
        w7jVar.getClass();
        n5jVar.zzf = w7jVar;
        n5jVar.zze = 4;
    }

    public static void F(n5j n5jVar, p9j p9jVar) {
        p9jVar.getClass();
        n5jVar.zzf = p9jVar;
        n5jVar.zze = 3;
    }

    public static void y(n5j n5jVar, int i) {
        n5jVar.zzg = i - 1;
        n5jVar.zzd |= 1;
    }

    public static j5j z() {
        return (j5j) zzb.o();
    }

    public final w7j B() {
        return this.zze == 4 ? (w7j) this.zzf : w7j.z();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005᠌\u0001", new Object[]{"zzf", "zze", "zzd", "zzg", h5j.a, m7j.class, p9j.class, w7j.class, "zzh", d6j.a});
        }
        if (i2 == 3) {
            return new n5j();
        }
        l5j l5jVar = null;
        if (i2 == 4) {
            return new j5j(l5jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
