package com.google.android.gms.internal.ads;

import defpackage.gvi;
import defpackage.ivi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class ta extends ia implements sti {
    private static final ta zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzd;
    private long zze;

    static {
        ta taVar = new ta();
        zza = taVar;
        ia.F(ta.class, taVar);
    }

    public static gvi b0() {
        return (gvi) zza.p();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\u0002", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new ta();
        }
        ivi iviVar = null;
        if (iOrdinal == 4) {
            return new gvi(iviVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (ta.class) {
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
