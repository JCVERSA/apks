package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.toe;
import defpackage.vti;
import defpackage.woe;

public final class m extends ia implements sti {
    private static final m zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;

    static {
        m mVar = new m();
        zza = mVar;
        ia.F(m.class, mVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzc", "zzd", woe.a});
        }
        if (iOrdinal == 3) {
            return new m();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new toe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (m.class) {
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
