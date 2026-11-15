package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.sti;
import defpackage.tsh;
import defpackage.ush;
import defpackage.vti;

public final class q5 extends ia implements sti {
    private static final q5 zza;
    private static volatile vti zzb;
    private String zzc = "";

    static {
        q5 q5Var = new q5();
        zza = q5Var;
        ia.F(q5.class, q5Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzc"});
        }
        if (iOrdinal == 3) {
            return new q5();
        }
        ush ushVar = null;
        if (iOrdinal == 4) {
            return new tsh(ushVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (q5.class) {
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
