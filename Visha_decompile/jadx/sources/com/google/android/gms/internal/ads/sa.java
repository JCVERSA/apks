package com.google.android.gms.internal.ads;

import defpackage.cvi;
import defpackage.dvi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vsi;
import defpackage.vti;

public final class sa extends ia implements sti {
    private static final sa zza;
    private static volatile vti zzb;
    private vsi zzc = ia.q();
    private vsi zzd = ia.q();

    static {
        sa saVar = new sa();
        zza = saVar;
        ia.F(sa.class, saVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0002\u0000\u0001\u0016\u0003\u0016", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new sa();
        }
        dvi dviVar = null;
        if (iOrdinal == 4) {
            return new cvi(dviVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (sa.class) {
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
