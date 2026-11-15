package defpackage;

import com.google.android.gms.internal.play_billing.zzjs;

public final class v5j extends kli implements k0j {
    private static final v5j zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private int zzi;
    private int zzj;
    private String zzf = "";
    private String zzh = "";

    static {
        v5j v5jVar = new v5j();
        zzb = v5jVar;
        kli.f(v5j.class, v5jVar);
    }

    public static void B(v5j v5jVar, String str) {
        v5jVar.zzd |= 8;
        v5jVar.zzh = str;
    }

    public static void C(v5j v5jVar, String str) {
        str.getClass();
        v5jVar.zzd |= 2;
        v5jVar.zzf = str;
    }

    public static void D(v5j v5jVar, int i) {
        v5jVar.zzd |= 32;
        v5jVar.zzj = i;
    }

    public static void E(v5j v5jVar, int i) {
        v5jVar.zzd |= 16;
        v5jVar.zzi = i;
    }

    public static void F(v5j v5jVar, zzjs zzjsVar) {
        v5jVar.zzg = zzjsVar.zza();
        v5jVar.zzd |= 4;
    }

    public static void y(v5j v5jVar, int i) {
        v5jVar.zzd |= 1;
        v5jVar.zze = i;
    }

    public static p5j z() {
        return (p5j) zzb.o();
    }

    @Override
    public final Object l(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return kli.w(zzb, "\u0004\u0006\u0000\u0001\u0001\b\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003\u0007င\u0004\bင\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", r5j.a, "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new v5j();
        }
        t5j t5jVar = null;
        if (i2 == 4) {
            return new p5j(t5jVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
