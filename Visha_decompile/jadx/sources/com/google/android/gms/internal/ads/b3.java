package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class b3 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    private static final b3 zzg;
    private static volatile vti zzh;
    private int zzi;
    private int zzj;
    private m1 zzk;
    private m1 zzl;
    private m1 zzm;
    private ysi zzn = ia.u();
    private int zzo;

    static {
        b3 b3Var = new b3();
        zzg = b3Var;
        ia.F(b3.class, b3Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzg, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzi", "zzj", "zzk", "zzl", "zzm", "zzn", m1.class, "zzo"});
        }
        if (iOrdinal == 3) {
            return new b3();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new a3();
        }
        if (iOrdinal == 5) {
            return zzg;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzh;
        if (msiVar == null) {
            synchronized (b3.class) {
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
