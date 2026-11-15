package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.upi;
import defpackage.vpi;
import defpackage.vti;

public final class z9 extends ia implements sti {
    private static final z9 zza;
    private static volatile vti zzb;
    private int zzc;

    static {
        z9 z9Var = new z9();
        zza = z9Var;
        ia.F(z9.class, z9Var);
    }

    public static z9 d0() {
        return zza;
    }

    public static z9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (z9) ia.N(zza, zzgwnVar, esiVar);
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
            return new z9();
        }
        vpi vpiVar = null;
        if (iOrdinal == 4) {
            return new upi(vpiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (z9.class) {
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
