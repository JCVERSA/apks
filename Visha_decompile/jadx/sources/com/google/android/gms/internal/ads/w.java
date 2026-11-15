package com.google.android.gms.internal.ads;

import defpackage.hpe;
import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.vti;

public final class w extends ia implements sti {
    private static final w zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzd;
    private long zze;
    private long zzf;

    static {
        w wVar = new w();
        zza = wVar;
        ia.F(w.class, wVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (iOrdinal == 3) {
            return new w();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new hpe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (w.class) {
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
