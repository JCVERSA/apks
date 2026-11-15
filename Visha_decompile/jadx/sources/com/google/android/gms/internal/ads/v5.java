package com.google.android.gms.internal.ads;

import defpackage.eth;
import defpackage.fth;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class v5 extends ia implements sti {
    private static final v5 zza;
    private static volatile vti zzb;
    private int zzc;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    static {
        v5 v5Var = new v5();
        zza = v5Var;
        ia.F(v5.class, v5Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0007\u0003\u0007\u0004\u0007", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new v5();
        }
        fth fthVar = null;
        if (iOrdinal == 4) {
            return new eth(fthVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (v5.class) {
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
