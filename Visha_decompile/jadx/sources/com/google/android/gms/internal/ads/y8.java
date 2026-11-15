package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.mni;
import defpackage.msi;
import defpackage.nni;
import defpackage.sti;
import defpackage.vti;

public final class y8 extends ia implements sti {
    private static final y8 zza;
    private static volatile vti zzb;
    private int zzc;
    private z8 zzd;
    private int zze;

    static {
        y8 y8Var = new y8();
        zza = y8Var;
        ia.F(y8.class, y8Var);
    }

    public static mni c0() {
        return (mni) zza.p();
    }

    public static y8 e0(zzgwn zzgwnVar, esi esiVar) {
        return (y8) ia.N(zza, zzgwnVar, esiVar);
    }

    public static void h0(y8 y8Var, z8 z8Var) {
        z8Var.getClass();
        y8Var.zzd = z8Var;
        y8Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new y8();
        }
        nni nniVar = null;
        if (iOrdinal == 4) {
            return new mni(nniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (y8.class) {
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
        return this.zze;
    }

    public final z8 f0() {
        z8 z8Var = this.zzd;
        return z8Var == null ? z8.e0() : z8Var;
    }
}
