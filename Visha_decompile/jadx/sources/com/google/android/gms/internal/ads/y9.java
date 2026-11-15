package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.spi;
import defpackage.sti;
import defpackage.tpi;
import defpackage.vti;

public final class y9 extends ia implements sti {
    private static final y9 zza;
    private static volatile vti zzb;
    private int zzc;
    private zzgwn zzd = zzgwn.zzb;

    static {
        y9 y9Var = new y9();
        zza = y9Var;
        ia.F(y9.class, y9Var);
    }

    public static spi c0() {
        return (spi) zza.p();
    }

    public static y9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (y9) ia.N(zza, zzgwnVar, esiVar);
    }

    public static vti g0() {
        return zza.w();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new y9();
        }
        tpi tpiVar = null;
        if (iOrdinal == 4) {
            return new spi(tpiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (y9.class) {
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

    public final zzgwn f0() {
        return this.zzd;
    }
}
