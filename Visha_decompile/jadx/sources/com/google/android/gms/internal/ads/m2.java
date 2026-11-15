package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class m2 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    private static final m2 zzg;
    private static volatile vti zzh;
    private int zzi;
    private int zzj = 1000;
    private v1 zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private long zzo;

    static {
        m2 m2Var = new m2();
        zzg = m2Var;
        ia.F(m2.class, m2Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzg, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzi", "zzj", zzbbn$zzq.zze(), "zzk", "zzl", "zzm", "zzn", "zzo"});
        }
        if (iOrdinal == 3) {
            return new m2();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new l2();
        }
        if (iOrdinal == 5) {
            return zzg;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzh;
        if (msiVar == null) {
            synchronized (m2.class) {
                try {
                    msiVar = zzh;
                    if (msiVar == null) {
                        msiVar = new msi(zzg);
                        zzh = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
