package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class i2 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    private static final i2 zzf;
    private static volatile vti zzg;
    private int zzh;
    private int zzi = 1000;
    private v1 zzj;
    private int zzk;
    private int zzl;
    private int zzm;

    static {
        i2 i2Var = new i2();
        zzf = i2Var;
        ia.F(i2.class, i2Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzf, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzh", "zzi", zzbbn$zzq.zze(), "zzj", "zzk", "zzl", "zzm"});
        }
        if (iOrdinal == 3) {
            return new i2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new h2();
        }
        if (iOrdinal == 5) {
            return zzf;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzg;
        if (msiVar == null) {
            synchronized (i2.class) {
                try {
                    msiVar = zzg;
                    if (msiVar == null) {
                        msiVar = new msi(zzf);
                        zzg = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
