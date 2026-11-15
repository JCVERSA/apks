package com.google.android.gms.internal.ads;

import defpackage.api;
import defpackage.bpi;
import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class q9 extends ia implements sti {
    private static final q9 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private r9 zze;

    static {
        q9 q9Var = new q9();
        zza = q9Var;
        ia.F(q9.class, q9Var);
    }

    public static api c0() {
        return (api) zza.p();
    }

    public static q9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (q9) ia.N(zza, zzgwnVar, esiVar);
    }

    public static vti g0() {
        return zza.w();
    }

    public static void h0(q9 q9Var, r9 r9Var) {
        r9Var.getClass();
        q9Var.zze = r9Var;
        q9Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new q9();
        }
        bpi bpiVar = null;
        if (iOrdinal == 4) {
            return new api(bpiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (q9.class) {
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

    public final r9 f0() {
        r9 r9Var = this.zze;
        return r9Var == null ? r9.d0() : r9Var;
    }
}
