package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class g3 extends ia implements sti {
    public static final int zza = 5;
    public static final int zzb = 6;
    public static final int zzc = 7;
    public static final int zzd = 8;
    private static final g3 zze;
    private static volatile vti zzf;
    private int zzg;
    private int zzh;
    private o1 zzi;
    private String zzj = "";
    private String zzk = "";

    static {
        g3 g3Var = new g3();
        zze = g3Var;
        ia.F(g3.class, g3Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zze, "\u0004\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0000\u0005᠌\u0000\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzg", "zzh", zzbbn$zzo$zzb.zze(), "zzi", "zzj", "zzk"});
        }
        if (iOrdinal == 3) {
            return new g3();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new e3();
        }
        if (iOrdinal == 5) {
            return zze;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzf;
        if (msiVar == null) {
            synchronized (g3.class) {
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
