package com.google.android.gms.internal.ads;

import defpackage.aoi;
import defpackage.doi;
import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class f9 extends ia implements sti {
    private static final f9 zza;
    private static volatile vti zzb;

    static {
        f9 f9Var = new f9();
        zza = f9Var;
        ia.F(f9.class, f9Var);
    }

    public static f9 c0() {
        return zza;
    }

    public static f9 d0(zzgwn zzgwnVar, esi esiVar) {
        return (f9) ia.N(zza, zzgwnVar, esiVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        doi doiVar = null;
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0000", null);
        }
        if (iOrdinal == 3) {
            return new f9();
        }
        if (iOrdinal == 4) {
            return new aoi(doiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (f9.class) {
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
