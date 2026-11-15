package com.google.android.gms.internal.ads;

import defpackage.fwi;
import defpackage.gwi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.usi;
import defpackage.vti;

public final class gb extends ia implements sti {
    private static final gb zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        gb gbVar = new gb();
        zza = gbVar;
        ia.F(gb.class, gbVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            usi usiVar = fwi.a;
            return ia.z(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002", new Object[]{"zzc", "zzd", usiVar, "zze", "zzf", usiVar});
        }
        if (iOrdinal == 3) {
            return new gb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new gwi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (gb.class) {
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
