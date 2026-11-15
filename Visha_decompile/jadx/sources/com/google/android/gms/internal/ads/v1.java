package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class v1 extends ia implements sti {
    public static final int zza = 1;
    private static final v1 zzb;
    private static volatile vti zzc;
    private int zzd;
    private int zze;

    static {
        v1 v1Var = new v1();
        zzb = v1Var;
        ia.F(v1.class, v1Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", zzbbn$zzaw$zzb.zze()});
        }
        if (iOrdinal == 3) {
            return new v1();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new t1();
        }
        if (iOrdinal == 5) {
            return zzb;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzc;
        if (msiVar == null) {
            synchronized (v1.class) {
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
