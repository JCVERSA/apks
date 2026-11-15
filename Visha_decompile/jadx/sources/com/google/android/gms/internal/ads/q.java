package com.google.android.gms.internal.ads;

import defpackage.cpe;
import defpackage.mpe;
import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.vti;

public final class q extends ia implements sti {
    private static final q zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzd = -1;
    private int zze = 1000;

    static {
        q qVar = new q();
        zza = qVar;
        ia.F(q.class, qVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001", new Object[]{"zzc", "zzd", "zze", mpe.a});
        }
        if (iOrdinal == 3) {
            return new q();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new cpe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (q.class) {
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
