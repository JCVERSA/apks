package com.google.android.gms.internal.ads;

import defpackage.ewi;
import defpackage.fwi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class hb extends ia implements sti {
    private static final hb zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private gb zze;
    private gb zzf;

    static {
        hb hbVar = new hb();
        zza = hbVar;
        ia.F(hb.class, hbVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", fwi.a, "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new hb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new ewi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (hb.class) {
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
