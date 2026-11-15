package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.sni;
import defpackage.sti;
import defpackage.tni;
import defpackage.vti;

public final class b9 extends ia implements sti {
    private static final b9 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;

    static {
        b9 b9Var = new b9();
        zza = b9Var;
        ia.F(b9.class, b9Var);
    }

    public static sni d0() {
        return (sni) zza.p();
    }

    public static b9 f0(zzgwn zzgwnVar, esi esiVar) {
        return (b9) ia.N(zza, zzgwnVar, esiVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd"});
        }
        if (iOrdinal == 3) {
            return new b9();
        }
        tni tniVar = null;
        if (iOrdinal == 4) {
            return new sni(tniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (b9.class) {
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

    public final int c0() {
        return this.zzd;
    }
}
