package com.google.android.gms.internal.ads;

import defpackage.eoi;
import defpackage.esi;
import defpackage.foi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class g9 extends ia implements sti {
    private static final g9 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private i9 zze;
    private zzgwn zzf = zzgwn.zzb;

    static {
        g9 g9Var = new g9();
        zza = g9Var;
        ia.F(g9.class, g9Var);
    }

    public static eoi c0() {
        return (eoi) zza.p();
    }

    public static g9 e0() {
        return zza;
    }

    public static g9 f0(zzgwn zzgwnVar, esi esiVar) {
        return (g9) ia.N(zza, zzgwnVar, esiVar);
    }

    public static vti i0() {
        return zza.w();
    }

    public static void k0(g9 g9Var, i9 i9Var) {
        i9Var.getClass();
        g9Var.zze = i9Var;
        g9Var.zzc |= 1;
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
            return new g9();
        }
        foi foiVar = null;
        if (iOrdinal == 4) {
            return new eoi(foiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (g9.class) {
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

    public final i9 g0() {
        i9 i9Var = this.zze;
        return i9Var == null ? i9.f0() : i9Var;
    }

    public final zzgwn h0() {
        return this.zzf;
    }
}
