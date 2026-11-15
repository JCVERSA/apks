package com.google.android.gms.internal.ads;

import defpackage.bwi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class cb extends ia implements sti {
    private static final cb zza;
    private static volatile vti zzb;
    private int zzc;
    private zzgwn zzd;
    private zzgwn zze;
    private zzgwn zzf;

    static {
        cb cbVar = new cb();
        zza = cbVar;
        ia.F(cb.class, cbVar);
    }

    public cb() {
        zzgwn zzgwnVar = zzgwn.zzb;
        this.zzd = zzgwnVar;
        this.zze = zzgwnVar;
        this.zzf = zzgwnVar;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new cb();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new bwi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (cb.class) {
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
