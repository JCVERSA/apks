package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.wsh;
import defpackage.xsh;

public final class r5 extends ia implements sti {
    private static final r5 zza;
    private static volatile vti zzb;
    private boolean zzc;

    static {
        r5 r5Var = new r5();
        zza = r5Var;
        ia.F(r5.class, r5Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0007", new Object[]{"zzc"});
        }
        if (iOrdinal == 3) {
            return new r5();
        }
        xsh xshVar = null;
        if (iOrdinal == 4) {
            return new wsh(xshVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (r5.class) {
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
