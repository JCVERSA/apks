package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.kni;
import defpackage.lni;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class x8 extends ia implements sti {
    private static final x8 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private z8 zze;
    private zzgwn zzf = zzgwn.zzb;

    static {
        x8 x8Var = new x8();
        zza = x8Var;
        ia.F(x8.class, x8Var);
    }

    public static kni c0() {
        return (kni) zza.p();
    }

    public static x8 e0(zzgwn zzgwnVar, esi esiVar) {
        return (x8) ia.N(zza, zzgwnVar, esiVar);
    }

    public static vti h0() {
        return zza.w();
    }

    public static void j0(x8 x8Var, z8 z8Var) {
        z8Var.getClass();
        x8Var.zze = z8Var;
        x8Var.zzc |= 1;
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
            return new x8();
        }
        lni lniVar = null;
        if (iOrdinal == 4) {
            return new kni(lniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (x8.class) {
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

    public final z8 f0() {
        z8 z8Var = this.zze;
        return z8Var == null ? z8.e0() : z8Var;
    }

    public final zzgwn g0() {
        return this.zzf;
    }
}
