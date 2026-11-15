package com.google.android.gms.internal.ads;

import defpackage.fni;
import defpackage.gni;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class w8 extends ia implements sti {
    private static final w8 zza;
    private static volatile vti zzb;
    private int zzc;

    static {
        w8 w8Var = new w8();
        zza = w8Var;
        ia.F(w8.class, w8Var);
    }

    public static fni c0() {
        return (fni) zza.p();
    }

    public static w8 e0() {
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
            return new w8();
        }
        gni gniVar = null;
        if (iOrdinal == 4) {
            return new fni(gniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (w8.class) {
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
