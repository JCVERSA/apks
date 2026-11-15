package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.rmi;
import defpackage.smi;
import defpackage.sti;
import defpackage.vti;

public final class p8 extends ia implements sti {
    private static final p8 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private zzgwn zze = zzgwn.zzb;
    private r8 zzf;

    static {
        p8 p8Var = new p8();
        zza = p8Var;
        ia.F(p8.class, p8Var);
    }

    public static rmi c0() {
        return (rmi) zza.p();
    }

    public static p8 e0(zzgwn zzgwnVar, esi esiVar) {
        return (p8) ia.N(zza, zzgwnVar, esiVar);
    }

    public static vti h0() {
        return zza.w();
    }

    public static void j0(p8 p8Var, r8 r8Var) {
        r8Var.getClass();
        p8Var.zzf = r8Var;
        p8Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new p8();
        }
        smi smiVar = null;
        if (iOrdinal == 4) {
            return new rmi(smiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (p8.class) {
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

    public final r8 f0() {
        r8 r8Var = this.zzf;
        return r8Var == null ? r8.e0() : r8Var;
    }

    public final zzgwn g0() {
        return this.zze;
    }
}
