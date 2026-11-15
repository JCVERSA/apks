package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.kpi;
import defpackage.lpi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class v9 extends ia implements sti {
    private static final v9 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private x9 zze;
    private zzgwn zzf = zzgwn.zzb;

    static {
        v9 v9Var = new v9();
        zza = v9Var;
        ia.F(v9.class, v9Var);
    }

    public static kpi c0() {
        return (kpi) zza.p();
    }

    public static v9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (v9) ia.N(zza, zzgwnVar, esiVar);
    }

    public static void i0(v9 v9Var, x9 x9Var) {
        x9Var.getClass();
        v9Var.zze = x9Var;
        v9Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new v9();
        }
        lpi lpiVar = null;
        if (iOrdinal == 4) {
            return new kpi(lpiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (v9.class) {
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

    public final zzgwn g0() {
        return this.zzf;
    }
}
