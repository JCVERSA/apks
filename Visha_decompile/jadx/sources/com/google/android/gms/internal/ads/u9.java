package com.google.android.gms.internal.ads;

import defpackage.ipi;
import defpackage.jpi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class u9 extends ia implements sti {
    public static final int zza = 0;
    private static final u9 zzb;
    private static volatile vti zzc;
    private String zzd = "";
    private ysi zze = ia.u();

    static {
        u9 u9Var = new u9();
        zzb = u9Var;
        ia.F(u9.class, u9Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzd", "zze", l9.class});
        }
        if (iOrdinal == 3) {
            return new u9();
        }
        jpi jpiVar = null;
        if (iOrdinal == 4) {
            return new ipi(jpiVar);
        }
        if (iOrdinal == 5) {
            return zzb;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzc;
        if (msiVar == null) {
            synchronized (u9.class) {
                try {
                    msiVar = zzc;
                    if (msiVar == null) {
                        msiVar = new msi(zzb);
                        zzc = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
