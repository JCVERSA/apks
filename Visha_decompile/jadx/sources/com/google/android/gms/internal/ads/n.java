package com.google.android.gms.internal.ads;

import defpackage.mpe;
import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.usi;
import defpackage.vti;
import defpackage.xoe;

public final class n extends ia implements sti {
    private static final n zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzd = -1;
    private int zze = 1000;
    private int zzf = 1000;

    static {
        n nVar = new n();
        zza = nVar;
        ia.F(n.class, nVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            usi usiVar = mpe.a;
            return ia.z(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzc", "zzd", "zze", usiVar, "zzf", usiVar});
        }
        if (iOrdinal == 3) {
            return new n();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new xoe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (n.class) {
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
