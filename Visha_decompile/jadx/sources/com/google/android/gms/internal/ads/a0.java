package com.google.android.gms.internal.ads;

import defpackage.lpe;
import defpackage.msi;
import defpackage.ope;
import defpackage.rpe;
import defpackage.spe;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class a0 extends ia implements sti {
    private static final a0 zza;
    private static volatile vti zzb;
    private int zzc;
    private ysi zzd = ia.u();
    private zzgwn zze = zzgwn.zzb;
    private int zzf = 1;
    private int zzg = 1;

    static {
        a0 a0Var = new a0();
        zza = a0Var;
        ia.F(a0.class, a0Var);
    }

    public static rpe b0() {
        return (rpe) zza.p();
    }

    public static void d0(a0 a0Var, zzgwn zzgwnVar) {
        ysi ysiVar = a0Var.zzd;
        if (!ysiVar.zzc()) {
            a0Var.zzd = ia.v(ysiVar);
        }
        a0Var.zzd.add(zzgwnVar);
    }

    public static void e0(a0 a0Var, zzgwn zzgwnVar) {
        a0Var.zzc |= 1;
        a0Var.zze = zzgwnVar;
    }

    public static void f0(a0 a0Var, int i) {
        a0Var.zzg = i - 1;
        a0Var.zzc |= 4;
    }

    public static void g0(a0 a0Var, int i) {
        a0Var.zzf = 4;
        a0Var.zzc |= 2;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003᠌\u0001\u0004᠌\u0002", new Object[]{"zzc", "zzd", "zze", "zzf", ope.a, "zzg", lpe.a});
        }
        if (iOrdinal == 3) {
            return new a0();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new rpe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (a0.class) {
                try {
                    msiVar = zzb;
                    if (msiVar == null) {
                        msiVar = new msi(zza);
                        zzb = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
