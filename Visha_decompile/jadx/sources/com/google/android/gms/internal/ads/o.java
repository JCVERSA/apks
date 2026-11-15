package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.vti;
import defpackage.yoe;

public final class o extends ia implements sti {
    private static final o zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzd = -1;

    static {
        o oVar = new o();
        zza = oVar;
        ia.F(o.class, oVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဂ\u0000", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new o();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new yoe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (o.class) {
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
