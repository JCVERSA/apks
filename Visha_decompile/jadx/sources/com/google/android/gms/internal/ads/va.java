package com.google.android.gms.internal.ads;

import defpackage.kvi;
import defpackage.lvi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class va extends ia implements sti {
    private static final va zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private long zze;
    private zzgwn zzf = zzgwn.zzb;

    static {
        va vaVar = new va();
        zza = vaVar;
        ia.F(va.class, vaVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", lvi.a, "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new va();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new kvi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (va.class) {
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
