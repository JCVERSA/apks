package com.google.android.gms.internal.ads;

import defpackage.foe;
import defpackage.joe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class h extends ia implements sti {
    private static final h zza;
    private static volatile vti zzb;
    private int zzc;
    private i zzd;
    private j zze;

    static {
        h hVar = new h();
        zza = hVar;
        ia.F(h.class, hVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", "zze"});
        }
        if (iOrdinal == 3) {
            return new h();
        }
        joe joeVar = null;
        if (iOrdinal == 4) {
            return new foe(joeVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (h.class) {
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
