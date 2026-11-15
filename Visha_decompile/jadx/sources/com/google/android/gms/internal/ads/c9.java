package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.uni;
import defpackage.vni;
import defpackage.vti;

public final class c9 extends ia implements sti {
    private static final c9 zza;
    private static volatile vti zzb;
    private int zzc;
    private zzgwn zzd = zzgwn.zzb;

    static {
        c9 c9Var = new c9();
        zza = c9Var;
        ia.F(c9.class, c9Var);
    }

    public static uni c0() {
        return (uni) zza.p();
    }

    public static c9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (c9) ia.N(zza, zzgwnVar, esiVar);
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
            return new c9();
        }
        vni vniVar = null;
        if (iOrdinal == 4) {
            return new uni(vniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (c9.class) {
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
