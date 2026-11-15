package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.qpi;
import defpackage.rpi;
import defpackage.sti;
import defpackage.vti;

public final class x9 extends ia implements sti {
    private static final x9 zza;
    private static volatile vti zzb;
    private int zzc;

    static {
        x9 x9Var = new x9();
        zza = x9Var;
        ia.F(x9.class, x9Var);
    }

    public static qpi c0() {
        return (qpi) zza.p();
    }

    public static x9 e0() {
        return zza;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzc"});
        }
        if (iOrdinal == 3) {
            return new x9();
        }
        rpi rpiVar = null;
        if (iOrdinal == 4) {
            return new qpi(rpiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (x9.class) {
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
        return this.zzc;
    }
}
