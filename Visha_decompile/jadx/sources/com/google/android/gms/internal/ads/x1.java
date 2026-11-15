package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class x1 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    private static final x1 zze;
    private static volatile vti zzf;
    private int zzg;
    private o1 zzh;
    private int zzi = 1000;
    private v1 zzj;
    private m1 zzk;

    static {
        x1 x1Var = new x1();
        zze = x1Var;
        ia.F(x1.class, x1Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzg", "zzh", "zzi", zzbbn$zzq.zze(), "zzj", "zzk"});
        }
        if (iOrdinal == 3) {
            return new x1();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new w1();
        }
        if (iOrdinal == 5) {
            return zze;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzf;
        if (msiVar == null) {
            synchronized (x1.class) {
                try {
                    msiVar = zzf;
                    if (msiVar == null) {
                        msiVar = new msi(zze);
                        zzf = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
