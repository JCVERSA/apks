package com.google.android.gms.internal.ads;

import defpackage.msi;
import defpackage.oni;
import defpackage.pni;
import defpackage.sti;
import defpackage.vti;

public final class z8 extends ia implements sti {
    private static final z8 zza;
    private static volatile vti zzb;
    private int zzc;

    static {
        z8 z8Var = new z8();
        zza = z8Var;
        ia.F(z8.class, z8Var);
    }

    public static oni c0() {
        return (oni) zza.p();
    }

    public static z8 e0() {
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
            return new z8();
        }
        pni pniVar = null;
        if (iOrdinal == 4) {
            return new oni(pniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (z8.class) {
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
