package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.opi;
import defpackage.ppi;
import defpackage.sti;
import defpackage.vti;

public final class w9 extends ia implements sti {
    private static final w9 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private x9 zze;

    static {
        w9 w9Var = new w9();
        zza = w9Var;
        ia.F(w9.class, w9Var);
    }

    public static opi c0() {
        return (opi) zza.p();
    }

    public static w9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (w9) ia.N(zza, zzgwnVar, esiVar);
    }

    public static void g0(w9 w9Var, x9 x9Var) {
        x9Var.getClass();
        w9Var.zze = x9Var;
        w9Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new w9();
        }
        ppi ppiVar = null;
        if (iOrdinal == 4) {
            return new opi(ppiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (w9.class) {
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

    public final int b0() {
        return this.zzd;
    }

    public final x9 f0() {
        x9 x9Var = this.zze;
        return x9Var == null ? x9.e0() : x9Var;
    }
}
