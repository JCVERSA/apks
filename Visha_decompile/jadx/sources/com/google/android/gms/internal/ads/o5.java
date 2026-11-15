package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.psh;
import defpackage.qsh;
import defpackage.sti;
import defpackage.vti;

public final class o5 extends ia implements sti {
    private static final o5 zza;
    private static volatile vti zzb;
    private String zzc = "";

    static {
        o5 o5Var = new o5();
        zza = o5Var;
        ia.F(o5.class, o5Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzc"});
        }
        if (iOrdinal == 3) {
            return new o5();
        }
        qsh qshVar = null;
        if (iOrdinal == 4) {
            return new psh(qshVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (o5.class) {
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
