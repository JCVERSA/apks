package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class k2 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final k2 zzd;
    private static volatile vti zze;
    private int zzf;
    private int zzg = 1000;
    private v1 zzh;
    private m1 zzi;

    static {
        k2 k2Var = new k2();
        zzd = k2Var;
        ia.F(k2.class, k2Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", zzbbn$zzq.zze(), "zzh", "zzi"});
        }
        if (iOrdinal == 3) {
            return new k2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new j2();
        }
        if (iOrdinal == 5) {
            return zzd;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zze;
        if (msiVar == null) {
            synchronized (k2.class) {
                try {
                    msiVar = zze;
                    if (msiVar == null) {
                        msiVar = new msi(zzd);
                        zze = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
