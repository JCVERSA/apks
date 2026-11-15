package com.google.android.gms.internal.ads;

import defpackage.ksh;
import defpackage.msh;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class n5 extends ia implements sti {
    private static final n5 zza;
    private static volatile vti zzb;
    private ysi zzc = ia.u();

    static {
        n5 n5Var = new n5();
        zza = n5Var;
        ia.F(n5.class, n5Var);
    }

    public static ksh c0() {
        return (ksh) zza.p();
    }

    public static void e0(n5 n5Var, m5 m5Var) {
        m5Var.getClass();
        ysi ysiVar = n5Var.zzc;
        if (!ysiVar.zzc()) {
            n5Var.zzc = ia.v(ysiVar);
        }
        n5Var.zzc.add(m5Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", m5.class});
        }
        if (iOrdinal == 3) {
            return new n5();
        }
        msh mshVar = null;
        if (iOrdinal == 4) {
            return new ksh(mshVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (n5.class) {
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

    public final int b0() {
        return this.zzc.size();
    }
}
