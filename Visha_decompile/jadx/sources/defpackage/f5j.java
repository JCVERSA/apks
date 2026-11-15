package defpackage;

import com.google.android.gms.internal.play_billing.zzjz;

public final class f5j extends kli implements k0j {
    private static final f5j zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private v5j zzh;
    private int zzi;

    static {
        f5j f5jVar = new f5j();
        zzb = f5jVar;
        kli.f(f5j.class, f5jVar);
    }

    public static void A(f5j f5jVar, int i) {
        f5jVar.zzg = i - 1;
        f5jVar.zzd |= 1;
    }

    public static c5j B() {
        return (c5j) zzb.o();
    }

    public static f5j D(byte[] bArr) {
        return (f5j) kli.s(zzb, bArr);
    }

    public static void F(f5j f5jVar, zzjz zzjzVar) {
        f5jVar.zzi = zzjzVar.zza();
        f5jVar.zzd |= 4;
    }

    public static void G(f5j f5jVar, v5j v5jVar) {
        v5jVar.getClass();
        f5jVar.zzh = v5jVar;
        f5jVar.zzd |= 2;
    }

    public static void H(f5j f5jVar, m7j m7jVar) {
        m7jVar.getClass();
        f5jVar.zzf = m7jVar;
        f5jVar.zze = 4;
    }

    public static void y(f5j f5jVar, w7j w7jVar) {
        w7jVar.getClass();
        f5jVar.zzf = w7jVar;
        f5jVar.zze = 7;
    }

    public static void z(f5j f5jVar, p9j p9jVar) {
        p9jVar.getClass();
        f5jVar.zzf = p9jVar;
        f5jVar.zze = 6;
    }

    public final w7j E() {
        return this.zze == 7 ? (w7j) this.zzf : w7j.z();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0004<\u0000\u0005᠌\u0002\u0006<\u0000\u0007<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", h5j.a, "zzh", m7j.class, "zzi", d6j.a, p9j.class, w7j.class});
        }
        if (i2 == 3) {
            return new f5j();
        }
        d5j d5jVar = null;
        if (i2 == 4) {
            return new c5j(d5jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
