package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.qni;
import defpackage.rni;
import defpackage.sti;
import defpackage.vti;

public final class a9 extends ia implements sti {
    private static final a9 zza;
    private static volatile vti zzb;
    private int zzc;
    private zzgwn zzd = zzgwn.zzb;

    static {
        a9 a9Var = new a9();
        zza = a9Var;
        ia.F(a9.class, a9Var);
    }

    public static qni c0() {
        return (qni) zza.p();
    }

    public static a9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (a9) ia.N(zza, zzgwnVar, esiVar);
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
            return new a9();
        }
        rni rniVar = null;
        if (iOrdinal == 4) {
            return new qni(rniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (a9.class) {
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
