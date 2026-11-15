package com.google.android.gms.internal.ads;

import defpackage.lxi;
import defpackage.msi;
import defpackage.rvi;
import defpackage.sti;
import defpackage.vti;

public final class xa extends ia implements sti {
    private static final xa zza;
    private static volatile vti zzb;
    private int zzc;
    private String zzd = "";

    static {
        xa xaVar = new xa();
        zza = xaVar;
        ia.F(xa.class, xaVar);
    }

    public static rvi b0() {
        return (rvi) zza.p();
    }

    public static void d0(xa xaVar, String str) {
        xaVar.zzc |= 1;
        xaVar.zzd = str;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new xa();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new rvi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (xa.class) {
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
