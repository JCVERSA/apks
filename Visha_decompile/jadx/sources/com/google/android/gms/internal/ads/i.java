package com.google.android.gms.internal.ads;

import defpackage.goe;
import defpackage.hoe;
import defpackage.joe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class i extends ia implements sti {
    private static final i zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd = 2;

    static {
        i iVar = new i();
        zza = iVar;
        ia.F(i.class, iVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b᠌\u0000", new Object[]{"zzc", "zzd", hoe.a});
        }
        if (iOrdinal == 3) {
            return new i();
        }
        joe joeVar = null;
        if (iOrdinal == 4) {
            return new goe(joeVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (i.class) {
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
