package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class m1 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final m1 zzc;
    private static volatile vti zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        m1 m1Var = new m1();
        zzc = m1Var;
        ia.F(m1.class, m1Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (iOrdinal == 3) {
            return new m1();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new l1();
        }
        if (iOrdinal == 5) {
            return zzc;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzd;
        if (msiVar == null) {
            synchronized (m1.class) {
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
