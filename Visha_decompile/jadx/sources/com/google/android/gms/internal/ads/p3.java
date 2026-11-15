package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class p3 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    private static final p3 zze;
    private static volatile vti zzf;
    private int zzg;
    private l3 zzh;
    private ysi zzi = ia.u();
    private int zzj;
    private m1 zzk;

    static {
        p3 p3Var = new p3();
        zze = p3Var;
        ia.F(p3.class, p3Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b\u0003᠌\u0001\u0004ဉ\u0002", new Object[]{"zzg", "zzh", "zzi", k1.class, "zzj", zzbbn$zzq.zze(), "zzk"});
        }
        if (iOrdinal == 3) {
            return new p3();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new o3();
        }
        if (iOrdinal == 5) {
            return zze;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzf;
        if (msiVar == null) {
            synchronized (p3.class) {
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
