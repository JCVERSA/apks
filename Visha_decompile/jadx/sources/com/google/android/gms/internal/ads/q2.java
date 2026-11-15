package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class q2 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final q2 zzc;
    private static volatile vti zzd;
    private int zze;
    private int zzf = 1000;
    private v1 zzg;

    static {
        q2 q2Var = new q2();
        zzc = q2Var;
        ia.F(q2.class, q2Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", zzbbn$zzq.zze(), "zzg"});
        }
        if (iOrdinal == 3) {
            return new q2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new p2();
        }
        if (iOrdinal == 5) {
            return zzc;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzd;
        if (msiVar == null) {
            synchronized (q2.class) {
                try {
                    msiVar = zzd;
                    if (msiVar == null) {
                        msiVar = new msi(zzc);
                        zzd = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
