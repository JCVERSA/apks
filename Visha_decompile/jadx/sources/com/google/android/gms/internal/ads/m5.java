package com.google.android.gms.internal.ads;

import defpackage.lsh;
import defpackage.msh;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class m5 extends ia implements sti {
    private static final m5 zza;
    private static volatile vti zzb;
    private int zzc;
    private l5 zzd;

    static {
        m5 m5Var = new m5();
        zza = m5Var;
        ia.F(m5.class, m5Var);
    }

    public static lsh b0() {
        return (lsh) zza.p();
    }

    public static void d0(m5 m5Var, l5 l5Var) {
        l5Var.getClass();
        m5Var.zzd = l5Var;
        m5Var.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new m5();
        }
        msh mshVar = null;
        if (iOrdinal == 4) {
            return new lsh(mshVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (m5.class) {
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
