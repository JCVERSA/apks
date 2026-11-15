package com.google.android.gms.internal.ads;

import defpackage.gth;
import defpackage.jth;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class w5 extends ia implements sti {
    private static final w5 zza;
    private static volatile vti zzb;
    private boolean zzc;
    private boolean zzd;

    static {
        w5 w5Var = new w5();
        zza = w5Var;
        ia.F(w5.class, w5Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0002\u0007", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new w5();
        }
        jth jthVar = null;
        if (iOrdinal == 4) {
            return new gth(jthVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (w5.class) {
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
