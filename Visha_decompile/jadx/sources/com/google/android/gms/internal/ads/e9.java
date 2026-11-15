package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.yni;
import defpackage.zni;

public final class e9 extends ia implements sti {
    private static final e9 zza;
    private static volatile vti zzb;
    private int zzc;
    private zzgwn zzd = zzgwn.zzb;

    static {
        e9 e9Var = new e9();
        zza = e9Var;
        ia.F(e9.class, e9Var);
    }

    public static yni c0() {
        return (yni) zza.p();
    }

    public static e9 e0(zzgwn zzgwnVar, esi esiVar) {
        return (e9) ia.N(zza, zzgwnVar, esiVar);
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
            return ia.z(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new e9();
        }
        zni zniVar = null;
        if (iOrdinal == 4) {
            return new yni(zniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (e9.class) {
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
