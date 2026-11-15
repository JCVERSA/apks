package com.google.android.gms.internal.ads;

import defpackage.esi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.wni;
import defpackage.xni;

public final class d9 extends ia implements sti {
    private static final d9 zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;

    static {
        d9 d9Var = new d9();
        zza = d9Var;
        ia.F(d9.class, d9Var);
    }

    public static wni d0() {
        return (wni) zza.p();
    }

    public static d9 f0(zzgwn zzgwnVar, esi esiVar) {
        return (d9) ia.N(zza, zzgwnVar, esiVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzd", "zzc"});
        }
        if (iOrdinal == 3) {
            return new d9();
        }
        xni xniVar = null;
        if (iOrdinal == 4) {
            return new wni(xniVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (d9.class) {
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
