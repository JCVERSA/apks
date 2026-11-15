package com.google.android.gms.internal.ads;

import defpackage.cth;
import defpackage.dth;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class u5 extends ia implements sti {
    private static final u5 zza;
    private static volatile vti zzb;
    private ysi zzc = ia.u();

    static {
        u5 u5Var = new u5();
        zza = u5Var;
        ia.F(u5.class, u5Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", t5.class});
        }
        if (iOrdinal == 3) {
            return new u5();
        }
        dth dthVar = null;
        if (iOrdinal == 4) {
            return new cth(dthVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (u5.class) {
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
