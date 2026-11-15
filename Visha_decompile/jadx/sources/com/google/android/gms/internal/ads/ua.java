package com.google.android.gms.internal.ads;

import defpackage.hvi;
import defpackage.ivi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class ua extends ia implements sti {
    private static final ua zza;
    private static volatile vti zzb;
    private ysi zzc = ia.u();

    static {
        ua uaVar = new ua();
        zza = uaVar;
        ia.F(ua.class, uaVar);
    }

    public static hvi b0() {
        return (hvi) zza.p();
    }

    public static void d0(ua uaVar, ta taVar) {
        taVar.getClass();
        ysi ysiVar = uaVar.zzc;
        if (!ysiVar.zzc()) {
            uaVar.zzc = ia.v(ysiVar);
        }
        uaVar.zzc.add(taVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", ta.class});
        }
        if (iOrdinal == 3) {
            return new ua();
        }
        ivi iviVar = null;
        if (iOrdinal == 4) {
            return new hvi(iviVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (ua.class) {
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
